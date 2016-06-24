button actions
refresh
| index |
	index := self versionListModel selectedIndex.
	self versionListModel: ChangesVersionListModel new.
	self versionListModel changesBrowser: self.
	self versionListModel list: (ChangeListForChangesBrowser browseRecentLog first).
	self versionListModel selectedIndex: index + 1.
	self versionListModel browseFile.
	self updateCurrentlyShownChangeFile.