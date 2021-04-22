updating
updatePositions

	| logTuple |
	logTuple := CHChangeListModel browseRecentLogOn: (self changesBrowser changesFile).
	self 
		positions: (logTuple at: 2);
		endPosition: (logTuple at: 3)