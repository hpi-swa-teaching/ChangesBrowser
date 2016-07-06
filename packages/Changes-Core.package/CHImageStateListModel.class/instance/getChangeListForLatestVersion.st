browsing
getChangeListForLatestVersion

	^ CHChangeListModel browseRecent: (self endPosition - self positions first) on: (self changesBrowser changesFile)