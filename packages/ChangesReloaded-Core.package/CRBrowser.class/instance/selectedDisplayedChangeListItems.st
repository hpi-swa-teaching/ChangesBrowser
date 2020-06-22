accessing
selectedDisplayedChangeListItems

	^ self isDisplayedChangeListItemSelected
			ifTrue: [self selectedHistoryListItem selectedChangeListItems]
			ifFalse: [SortedCollection new]