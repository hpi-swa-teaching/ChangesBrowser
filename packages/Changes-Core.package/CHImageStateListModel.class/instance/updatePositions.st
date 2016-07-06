updating
updatePositions
	| logTuple |
	logTuple := CHChangeListModel browseRecentLog.
	self 
		positions: (logTuple at: 2);
		endPosition: (logTuple at: 3).