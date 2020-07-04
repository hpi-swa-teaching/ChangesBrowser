initialize-release
initializeHistoryListWith: aMultiByteFileStream

	| changeRecords |
	changeRecords := Cursor read
				showWhile: [((self class retrieveChangeRecordsFrom: aMultiByteFileStream)
						reject: [:each | each isInImage]) reversed].
	self historyList: (self getHistoryListFrom: changeRecords).
	self selectAllLatestChangesOfHistoryList