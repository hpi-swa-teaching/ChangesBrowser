browsing
browseFile
		self changesBrowser
		updateChangeListViewWith: (CHChangeListModel browseRecent: (self endPosition - self positions at: self selectedIndex) on: self 		changesBrowser changesFile).