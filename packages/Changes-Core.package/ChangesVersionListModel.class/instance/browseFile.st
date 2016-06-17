browsing
browseFile

	self changesBrowser
		updateChangeListViewWith: (ChangeListForChangesBrowser browseRecent: (self endPosition - self positions at: self selectedIndex) on: self changesBrowser changesFile).
	self currentlyShownIndex: self selectedIndex.