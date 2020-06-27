accessing
isAnyDisplayedChangeListItemSelected

	^ self hasValidHistoryListSelectionIndex
		ifTrue: [self selectedHistoryListItem hasSelectedChangeListItem]
		ifFalse: [false]