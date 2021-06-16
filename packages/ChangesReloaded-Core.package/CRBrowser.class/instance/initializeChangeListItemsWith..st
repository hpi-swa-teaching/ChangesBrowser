initialize-release
initializeChangeListItemsWith: aMultiByteFileStream

	| changeRecords |
	self usedChangeFile: aMultiByteFileStream.
	changeRecords := self class getChangeRecordsMissingInImageFrom: self usedChangeFile.
	self
		changeListItems: (self class getChangeListItemsFrom: changeRecords);
		initializeChangesGroups;
		pickAllChangeListItems