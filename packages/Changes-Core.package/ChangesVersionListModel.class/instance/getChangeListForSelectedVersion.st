as yet unclassified
getChangeListForSelectedVersion

	^ ChangeListForChangesBrowser browseRecent: (self endPosition - self positions at: self selectedIndex)