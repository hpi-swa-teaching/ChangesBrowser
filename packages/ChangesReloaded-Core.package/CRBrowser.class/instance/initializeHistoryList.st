initializing
initializeHistoryList

	| changeRecords |
	changeRecords := Cursor read
				showWhile: [(self retrieveChangeRecordsFromChangesFile
						reject: [:each | self isInImage: each]) reversed].
	self historyList: (self getHistoryListFrom: changeRecords).
	self historyList do: [:each | each selectLatest]