as yet unclassified
browseFile

	self changesBrowser changeList: (ChangeList browseRecent: (self endPosition - self positions at: self selectedIndex) on: self changesFile).