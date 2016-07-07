browsing
getChangeListForSelectedVersion

	^ CHChangeListModel browseRecent: (self endPosition - self positions at: self selectedIndex) on: (self changesBrowser changesFile)