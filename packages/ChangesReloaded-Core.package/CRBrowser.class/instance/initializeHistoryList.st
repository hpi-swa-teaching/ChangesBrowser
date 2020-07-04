initialize-release
initializeHistoryList

	| changeRecords |
	changeRecords := Cursor read
				showWhile: [(self retrieveChangeRecordsFromChangesFile
						reject: [:each | each isInImage]) reversed].
	self historyList: (self class getHistoryListFrom: changeRecords).
	self selectAllLatestChangesOfHistoryList
