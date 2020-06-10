initializing
initializeMethodHistories

	| changeRecords |
	changeRecords := Cursor read
				showWhile: [(self retreiveChangeRecordsFromChangesFile
						reject: [:each | self isInImage: each]) reversed].
	self methodHistories: (self getMethodHistoriesFrom: changeRecords)