accessing
getWholeChangeList
	^ CHChangeListModel browseRecent: self endPosition on: self changesBrowserLogic changesFile 
