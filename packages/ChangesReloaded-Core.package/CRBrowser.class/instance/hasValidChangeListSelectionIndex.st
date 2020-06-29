accessing
hasValidChangeListSelectionIndex

	^ self hasValidHistoryListSelectionIndex
		and: [self changeListSelectionIndex between: 1 and: self selectedHistoryListItem history size]