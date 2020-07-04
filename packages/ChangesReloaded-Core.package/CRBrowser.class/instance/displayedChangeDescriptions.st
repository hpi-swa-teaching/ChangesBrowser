accessing
displayedChangeDescriptions

	^ self hasValidHistoryListSelectionIndex
		ifFalse: [SortedCollection new]
		ifTrue: [self selectedHistoryListItem changeDescriptions]