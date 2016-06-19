button actions
refresh
	self versionListModel list: (ChangeListForChangesBrowser browseRecentLog first).
	self updateCurrentlyShownChangeFile.