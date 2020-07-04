accessing
displayedChangeListItems

	^ self hasValidHistoryListSelectionIndex
		ifFalse: [SortedCollection new]
		ifTrue: [self selectedHistoryListItem history]