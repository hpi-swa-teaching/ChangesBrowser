as yet unclassified
getChangeListForLatestVersion

	^ ChangeList browseRecent: (self endPosition - self positions first)
			+ VersionListModel positionInFileCorrection on: self changesFile