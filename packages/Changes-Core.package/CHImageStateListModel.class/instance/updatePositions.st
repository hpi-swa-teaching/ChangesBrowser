updating
updatePositions

	| logTuple |
	logTuple := CHChangeListModel browseRecentLogOn: (self changesBrowserLogic changesFile).
	self 
		positions: (logTuple at: 2);
		endPosition: (logTuple at: 3)