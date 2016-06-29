updating
updatePositions
	| logTuple |
	logTuple := ChangeListForChangesBrowser browseRecentLog.
	self 
		positions: (logTuple at: 2);
		endPosition: (logTuple at: 3).