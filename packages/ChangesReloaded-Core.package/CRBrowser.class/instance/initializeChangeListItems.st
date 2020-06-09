initialize-release
initializeChangeListItems

	| changeRecords |
	changeRecords := Cursor read
		showWhile: [(self retrieveChangeRecordsFromChangesFile
			reject: [:each | self isInImage: each])
			reversed].
	self changeListItems: (changeRecords
				collect: [:each | CRChangeListItem new
										changeRecord: each;
						 				isSelected: false])