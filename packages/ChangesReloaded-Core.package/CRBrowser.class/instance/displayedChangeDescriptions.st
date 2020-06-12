accessing
displayedChangeDescriptions

	^ self isHistoryListItemSelected
		ifFalse: [OrderedCollection new]
		ifTrue: [self selectedHistoryListItem changeDescriptions]