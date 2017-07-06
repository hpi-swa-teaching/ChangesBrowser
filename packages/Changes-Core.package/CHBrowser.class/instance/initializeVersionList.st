as yet unclassified
initializeVersionList
	
	| model logTuple |
	Transcript show: 'Warum ist das hier?'.
	logTuple := CHChangeListModel browseRecentLog.
	model := CHImageStateListModel new.
	self imageStateListModel: model.
	model
		list: logTuple first;
		changesBrowser: self
	