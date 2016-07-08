updating
updateFile
	self currentlyShownIndex ifNotNil: 
	[self updatePositions.
	self changesBrowser
		updateChangeListViewWith: (CHChangeListModel browseRecent: 
		(self endPosition - self positions at: (self currentlyShownIndex max: 1)))]