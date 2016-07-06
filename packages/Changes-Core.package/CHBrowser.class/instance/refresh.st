updating
refresh
	self testMode ifFalse: [
		self imageStateListModel
			list: (CHChangeListModel browseRecentLog first);
			updatePositions.
		self updateCurrentlyShownChangeFile].