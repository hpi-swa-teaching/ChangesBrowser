browsing
getChangeListForSelectedVersion

	^ ChangeListForChangesBrowser browseRecent: (self endPosition - self positions at: self selectedIndex)