initialization
initializeVersionList
	
	| model logTuple |
	logTuple := ChangeList browseRecentLog.
	model := ChangesVersionListModel new list: logTuple first.
	model 
		positions: (logTuple at: 2);
		endPosition: (logTuple at: 3);
		changesFile: (logTuple at: 4);
		changesBrowser: self.
	self versionListModel: model.
	^ self