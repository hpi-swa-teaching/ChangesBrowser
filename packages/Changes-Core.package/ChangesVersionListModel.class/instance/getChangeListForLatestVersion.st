browsing
getChangeListForLatestVersion

	^ ChangeListForChangesBrowser browseRecent: (self endPosition - self positions first) on: (self changesBrowser changesFile)