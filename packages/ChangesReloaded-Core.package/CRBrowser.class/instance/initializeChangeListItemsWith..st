initialize-release
initializeChangeListItemsWith: aMultiByteFileStream

	| changeRecords |
	changeRecords := Cursor read
				showWhile: [((self class retrieveChangeRecordsFrom: aMultiByteFileStream)
						reject: [:each | each isInImage]) reversed].
	self changeListItems: (self class getChangeListItemsFrom: changeRecords).
	self pickAllChangeListItems
