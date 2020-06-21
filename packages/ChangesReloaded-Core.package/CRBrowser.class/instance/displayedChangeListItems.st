accessing
displayedChangeListItems

	^ self isHistoryListItemSelected
		ifFalse: [SortedCollection new]
		ifTrue: [self selectedHistoryListItem history]