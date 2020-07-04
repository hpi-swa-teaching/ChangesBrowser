accessing
selectedDisplayedChangeListItems

	^ self isAnyDisplayedChangeListItemSelected
			ifTrue: [self selectedHistoryListItem selectedChangeListItems]
			ifFalse: [SortedCollection new]