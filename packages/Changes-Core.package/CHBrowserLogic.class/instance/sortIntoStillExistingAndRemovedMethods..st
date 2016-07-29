resetting
sortIntoStillExistingAndRemovedMethods: methodChanges 

	| stillExisting removedMethods returnCollection |
	stillExisting := Set new.
	removedMethods := Set new.
	methodChanges reversed
		do: [:aChangeRecord | aChangeRecord type == #method
				ifTrue: [stillExisting add: {aChangeRecord methodSelector. aChangeRecord methodClass}.
					removedMethods
						remove: {aChangeRecord methodSelector. aChangeRecord methodClassName}
						ifAbsent: []]
				ifFalse: [| selector class positionOfFirstSpace positionOfSecondSpace |
					positionOfFirstSpace := aChangeRecord string findString: ' '.
					positionOfSecondSpace := aChangeRecord string findString: ' ' startingAt: positionOfFirstSpace + 1.
					class := Smalltalk classNamed: (aChangeRecord string copyFrom: 1 to: positionOfFirstSpace - 1).
					selector := (aChangeRecord string copyFrom: positionOfSecondSpace + 2 to: aChangeRecord string size) asSymbol.
					removedMethods add: {selector. class}.
					stillExisting
						remove: {selector. class}
						ifAbsent: []]].
	returnCollection := OrderedCollection new.
	returnCollection add: stillExisting.
	returnCollection add: removedMethods.
	^ returnCollection