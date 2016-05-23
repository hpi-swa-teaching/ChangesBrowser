as yet unclassified
browseFile

	self changesBrowser
		updateChangeListViewWith: (ChangeList browseRecent: (self endPosition - self positions at: self selectedIndex)
					+ VersionListModel positionInFileCorrection)