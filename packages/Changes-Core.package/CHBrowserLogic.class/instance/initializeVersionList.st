initialization
initializeVersionList
	
	| model logTuple |

	logTuple := CHChangeListModel browseRecentLog.
	model := CHImageStateListModel new list: logTuple first.
	model changesBrowser: self.
	self imageStateListModel: model.
	^ self