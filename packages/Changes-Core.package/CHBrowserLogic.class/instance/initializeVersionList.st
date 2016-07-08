initialization
initializeVersionList
	
	| model logTuple |

	logTuple := CHChangeListModel browseRecentLog.
	model := CHImageStateListModel new list: logTuple first.
	model changesBrowserLogic: self.
	self imageStateListModel: model.
	^ self