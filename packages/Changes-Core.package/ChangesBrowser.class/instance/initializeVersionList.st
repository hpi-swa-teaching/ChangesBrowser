initialization
initializeVersionList
	
	| model logTuple |

	logTuple := ChangeListForChangesBrowser browseRecentLog.
	model := ChangesVersionListModel new list: logTuple first.
	model changesBrowser: self.
	self versionListModel: model.
	^ self