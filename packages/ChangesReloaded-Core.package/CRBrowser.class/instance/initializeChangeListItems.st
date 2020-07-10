initializing
initializeChangeListItems

	| changeRecords |
	changeRecords := Cursor read
				showWhile: [(self retrieveChangeRecordsFromChangesFile
						reject: [:each | each isInImage]) reversed].
	self changeListItems: (self getChangeListItemsFrom: changeRecords)
