resetting
getDeleteIndexOf: aChangeRecord ForClass: aClassName at: currentIndex

	| foundDeleteIndex |
	foundDeleteIndex := -1.
	((aChangeRecord string
				includesSubstring: (CHBrowserLogic ClassDefinitionIdentifierFor: aClassName)))
		ifTrue: [foundDeleteIndex := currentIndex].
	 ((aChangeRecord string
				= (CHBrowserLogic deletedClassIdentifierFor: aClassName)))
		ifTrue: [foundDeleteIndex := currentIndex].
	
	^ foundDeleteIndex