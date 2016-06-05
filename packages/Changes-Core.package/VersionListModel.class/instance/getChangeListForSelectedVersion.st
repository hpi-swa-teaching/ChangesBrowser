as yet unclassified
getChangeListForSelectedVersion

	^ ChangeList browseRecent: (self endPosition - self positions at: self selectedIndex)