accessing
isValidChangeListItemSelectionIndex

	^ self isHistoryListItemSelected
		and: [self changeListSelectionIndex between: 1 and: self selectedHistoryListItem history size]