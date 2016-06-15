updating
updateFile
	self currentlyShownIndex ifNotNil: 
	[self changesBrowser
		updateChangeListViewWith: (ChangeListForChangesBrowser browseRecent: (self endPosition - self positions at: self currentlyShownIndex))]