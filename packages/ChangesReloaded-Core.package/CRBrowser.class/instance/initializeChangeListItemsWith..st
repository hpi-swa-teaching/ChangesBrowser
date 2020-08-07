initialize-release
initializeChangeListItemsWith: aMultiByteFileStream

	| changeRecords |
	self usedChangeFile: aMultiByteFileStream.
	changeRecords := CRBrowser getChangeRecordsFrom: self usedChangeFile.
	self changeListItems: (CRBrowser getChangeListItemsFrom: changeRecords).
	self pickAllChangeListItems
