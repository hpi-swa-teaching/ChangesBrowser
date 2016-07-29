browsing
getChangeListForLatestImageState

	^ CHChangeListModel
		browseRecent: self endPosition - self positions first
		on: self changesBrowserLogic changesFile