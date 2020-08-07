initialize-release
initializeChangeListItemsWith: aMultiByteFileStream

	| changeRecords |
	self usedChangeFile: aMultiByteFileStream.
	changeRecords := CRBrowser getChangeRecordsMissingInImageFrom: self usedChangeFile.
	self changeListItems: (CRBrowser getChangeListItemsFrom: changeRecords).
	self pickAllChangeListItems
