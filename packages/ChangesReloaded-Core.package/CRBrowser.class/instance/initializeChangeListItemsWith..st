initialize-release
initializeChangeListItemsWith: aMultiByteFileStream

	| changeRecords |
	self usedChangeFile: aMultiByteFileStream.
	changeRecords := self class getChangeRecordsFromLastCrashFrom: self usedChangeFile.
	self
		changeListItems: (self class getChangeListItemsMissingInImageFrom: changeRecords);
		pickAllChangeListItems