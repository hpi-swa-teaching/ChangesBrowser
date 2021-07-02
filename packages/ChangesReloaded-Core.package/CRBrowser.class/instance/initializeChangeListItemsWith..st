initialize-release
initializeChangeListItemsWith: aMultiByteFileStream

	| changeRecords |

	changeRecords := self class getChangeRecordsFromLastCrashFrom: aMultiByteFileStream.
	self
		changeListItems: (self class getChangeListItemsMissingInImageFrom: changeRecords);
		pickAllChangeListItems