browsing
browseFile

	self changesBrowser
		updateChangeListViewWith: (ChangeListForChangesBrowser browseRecent: (self endPosition - self positions at: self selectedIndex)).
	self currentlyShownIndex: self selectedIndex.