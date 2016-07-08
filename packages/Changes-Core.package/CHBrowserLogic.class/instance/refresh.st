updating
refresh
	self testMode ifFalse: [
		self searchEnabled
			ifFalse: [ self imageStateListModel 
				list: (CHChangeListModel browseRecentLog first);
				updatePositions].
		self updateCurrentlyShownChangeFile]