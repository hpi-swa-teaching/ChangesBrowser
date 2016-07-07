resetting
resetToSelectedVersion

	| changeList selectedTimeStamp index |

	self saveSnapshot.
	changeList := self imageStateListModel getChangeListForSelectedVersion.
	selectedTimeStamp := TimeStamp fromString: '1 January 1000 00:00:00 am'.
	index := 1.
	[index <= changeList changeList size and: [selectedTimeStamp = (TimeStamp fromString: '1 January 1000 00:00:00 am')]]
		whileTrue: 	[selectedTimeStamp := CHBrowserLogic extractCeiledTimeStampFrom: (changeList changeList at: index).
						index := index + 1].
	self resetToTime: selectedTimeStamp with: changeList;
		 refresh