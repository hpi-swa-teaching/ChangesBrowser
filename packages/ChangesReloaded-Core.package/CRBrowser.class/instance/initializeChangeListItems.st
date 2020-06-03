initializing
initializeChangeListItems

	| changeRecords |
	changeRecords := Cursor read
		showWhile: [(self retreiveChangeRecordsFromChangesFile
			reject: [:each | self isInImage: each])
			reversed].
	self changeListItems: (changeRecords
				collect: [:each | CRChangeListItem new
										changeRecord: each;
						 				isSelected: false])