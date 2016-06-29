button actions
refresh
	self testMode ifFalse: [
		self versionListModel list: (ChangeListForChangesBrowser browseRecentLog first).
		self updateCurrentlyShownChangeFile].