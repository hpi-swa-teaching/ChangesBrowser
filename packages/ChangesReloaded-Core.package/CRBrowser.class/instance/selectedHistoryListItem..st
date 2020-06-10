accessing
selectedHistoryListItem: aSymbol

	selectedHistoryListItem := aSymbol.
	self repaintHistoryListSelections.
	self refreshChangeListItems