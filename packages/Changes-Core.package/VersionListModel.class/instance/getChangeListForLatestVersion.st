as yet unclassified
getChangeListForLatestVersion

	^ ChangeList browseRecent: (self endPosition - self positions second)
			+ VersionListModel positionInFileCorrection on: self changesFile