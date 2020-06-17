accessing
displayedChangeListItems

	^ self isHistoryListItemSelected
		ifFalse: [OrderedCollection new]
		ifTrue: [self selectedHistoryListItem history]