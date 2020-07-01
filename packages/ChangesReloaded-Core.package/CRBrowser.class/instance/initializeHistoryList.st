initializing
initializeHistoryList

	| changeRecords |
	changeRecords := Cursor read
				showWhile: [(self retrieveChangeRecordsFromChangesFile
						reject: [:each | each isInImage]) reversed].
	self historyList: (self getHistoryListFrom: changeRecords).
	self selectAllLatestChangesOfHistoryList
