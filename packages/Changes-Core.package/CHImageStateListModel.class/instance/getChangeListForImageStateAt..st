browsing
getChangeListForImageStateAt: index

	index > self positions size ifTrue: [^ nil].
	^ CHChangeListModel browseRecent: (self endPosition - self positions at: index) on: (self changesBrowserLogic changesFile)