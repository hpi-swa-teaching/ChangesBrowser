accessing
isDisplayedChangeListItemSelected

	^ self isHistoryListItemSelected
		ifTrue: [self selectedHistoryListItem hasSelectedChangeListItem]
		ifFalse: [false]