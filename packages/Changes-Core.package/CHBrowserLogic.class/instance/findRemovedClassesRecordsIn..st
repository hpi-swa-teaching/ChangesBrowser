resetting
findRemovedClassesRecordsIn: aChangeList

	| setOfRemovedClasses |

	setOfRemovedClasses := Set new.
	aChangeList changeList
		do: [:aChangeRecord | (aChangeRecord string beginsWith: CHBrowserLogic deletedClassIdentifier)
				ifTrue: [| subclass positionOfHash |
					positionOfHash := aChangeRecord string findString: '#'.
					subclass := aChangeRecord string copyFrom: positionOfHash + 1 to: aChangeRecord string size.
					setOfRemovedClasses add: subclass]].
	^ setOfRemovedClasses