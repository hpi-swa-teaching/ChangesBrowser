initialize-release
initializeChangeListItemsWith: aMultiByteFileStream

	| changeRecords |
	self usedChangeFile: aMultiByteFileStream.
	changeRecords := self class getChangeRecordsFrom: self usedChangeFile.
	self changeListItems: (self class getChangeListItemsFrom: changeRecords).
	self pickAllChangeListItems
