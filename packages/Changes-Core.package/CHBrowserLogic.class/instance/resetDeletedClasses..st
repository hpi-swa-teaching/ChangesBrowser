resetting
resetDeletedClasses: anSet 

	| wholeChangeList |
	wholeChangeList := self imageStateListModel getWholeChangeList changeList.
	anSet
		do: [:aClassName | 
			| firstIndex foundDeleteIndex changeRecordsForClass |
			firstIndex := -1.
			foundDeleteIndex := -1.
			1 to: wholeChangeList size
				do: [:currentIndex |
					| currentChangeRecord |
					currentChangeRecord := wholeChangeList at: currentIndex.
					 (((wholeChangeList at: currentIndex) string
								includesSubstring: (CHBrowserLogic classDefinitionIdentifierFor: aClassName)) and: [foundDeleteIndex = -1])
						ifTrue: [foundDeleteIndex := currentIndex].
					 (((wholeChangeList at: currentIndex) string
								= (CHBrowserLogic deletedClassIdentifierFor: aClassName)) and: [foundDeleteIndex = -1])
						ifTrue: [foundDeleteIndex := currentIndex]].
			foundDeleteIndex to: wholeChangeList size
				do: [:currentIndex | (((wholeChangeList at: currentIndex) string
							includesSubstring: (CHBrowserLogic classDefinitionIdentifierFor: aClassName)) and: [firstIndex = -1])
						ifTrue: [firstIndex := currentIndex]].
			firstIndex = -1 	ifTrue: [self error: 'Cannot resore class ' , aClassName].
			changeRecordsForClass := self collectAllChangesOfClass: aClassName in: wholeChangeList after: firstIndex.
			changeRecordsForClass
				do: [:aChangeRecord | aChangeRecord fileIn]].
			self refresh