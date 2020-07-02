initializing
initializeHistoryListWith: aMultiByteFileStream

	| changeRecords |
	changeRecords := Cursor read
				showWhile: [((self retrieveChangeRecordsFrom: aMultiByteFileStream)
						"reject: [:each | self isInImage: each]") reversed].
	self historyList: (self getHistoryListFrom: changeRecords).
	self selectAllLatestChangesOfHistoryList