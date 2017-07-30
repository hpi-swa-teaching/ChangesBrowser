buttonActions
refresh

	self searchEnabled
		ifFalse: [self imageStateListModel
					list: (CHChangeListModel browseRecentLogOn: self changesFile) first;
					updatePositions].
	self updateCurrentlyShownChangeFile