as yet unclassified
browseFile

	self changesBrowser
		changeList: (ChangeList browseRecent: (self endPosition - self positions at: self selectedIndex)
					+ VersionListModel positionInFileCorrection on: self changesFile)