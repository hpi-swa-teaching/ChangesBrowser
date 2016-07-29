browsing
browseFile

	self changesBrowserLogic
		updateChangeListViewWith: (CHChangeListModel browseRecent: (self endPosition - self positions at: self selectedIndex) on: self changesBrowserLogic changesFile).
	self currentlyShownIndex: self selectedIndex