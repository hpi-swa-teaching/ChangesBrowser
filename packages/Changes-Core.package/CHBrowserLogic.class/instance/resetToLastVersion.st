resetting
resetToLastVersion
"Get all changes after the last version and file them in."
	| changeList listOfChangeRecords |

	changeList := self imageStateListModel getChangeListForLatestImageState.
	listOfChangeRecords := changeList changeList
		select: [:changeRecord | (changeRecord string beginsWith: 'self') not].
	listOfChangeRecords reversed
		do: [:changeRecord | changeRecord fileIn].
		
	self refresh.