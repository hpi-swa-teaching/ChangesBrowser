resetting
resetClassesFrom: aChangeList

	| setOfAddedClasses setOfRemovedClasses |

	setOfAddedClasses := Set new.
	aChangeList changeList
		do: [:aChangeRecord | (aChangeRecord string matchesRegex: ChangesBrowser newClassesRegex)
				ifTrue: [| subclass positionOfFirstSpace positionOfSecondSpace positionOfFirstBreak |
					positionOfFirstSpace := aChangeRecord string findString: ' '.
					positionOfSecondSpace := aChangeRecord string findString: ' ' startingAt: positionOfFirstSpace + 1.
					positionOfFirstBreak := aChangeRecord string findString: Character cr asString.
					subclass := aChangeRecord string copyFrom: positionOfSecondSpace + 2 to: positionOfFirstBreak - 1.
					setOfAddedClasses add: subclass]].
			
	setOfRemovedClasses := Set new.
	aChangeList changeList
		do: [:aChangeRecord | (aChangeRecord string beginsWith: ChangesBrowser deletedClassIdentifier)
				ifTrue: [| subclass positionOfHash |
					positionOfHash := aChangeRecord string findString: '#'.
					subclass := aChangeRecord string copyFrom: positionOfHash + 1 to: aChangeRecord string size.
					setOfRemovedClasses add: subclass]].

	setOfAddedClasses
		do: [:aClass | Smalltalk removeClassNamed: aClass].
	self resetDeletedClasses: setOfRemovedClasses.
