updating
updateFile
	self currentlyShownIndex
	ifNotNil: [self updatePositions.
			self changesBrowserLogic	updateChangeListViewWith: (
				CHChangeListModel
					browseRecent: (self endPosition - self positions at: (self currentlyShownIndex max: 1))
					on: (self changesBrowserLogic changesFile))]