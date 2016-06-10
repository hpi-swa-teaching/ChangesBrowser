as yet unclassified
updateFile
	self currentlyShownIndex ifNotNil: 
	[self changesBrowser
		updateChangeListViewWith: (ChangeList browseRecent: (self endPosition - self positions at: self currentlyShownIndex))]