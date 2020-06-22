initializing
initializeHistoryList

	| changeRecords |
	changeRecords := Cursor read
				showWhile: [(self retrieveChangeRecordsFromChangesFile
						reject: [:each | each isInImage]) reversed].
	self historyList: (self getHistoryListFrom: changeRecords).
	self historyList do: [:each |
		each history do: [:change |
			change isSelected: true]]