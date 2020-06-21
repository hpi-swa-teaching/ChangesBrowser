accessing
displayedChangeDescriptions

	^ self isHistoryListItemSelected
		ifFalse: [SortedCollection new]
		ifTrue: [self selectedHistoryListItem changeDescriptions]