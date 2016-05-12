as yet unclassified
browseFile

	self changesBrowser changeList: (ChangeList browseRecent: (endPosition - positions at: selectedIndex) on: changesFile).