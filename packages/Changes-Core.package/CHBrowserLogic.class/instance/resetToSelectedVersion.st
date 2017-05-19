resetting
resetToSelectedVersion
	| changeList listOfCategories listOfClasses listOfChangeRecords listOfChangeRecordsRev|
	changeList := self imageStateListModel getChangeListForSelectedImageState.
	
	listOfCategories := changeList changeList
		select: [:changeRecord | 
			changeRecord string beginsWith: 'SystemOrganization addCategory:'].
	listOfCategories reversed
		do: [:changeRecord | changeRecord fileIn].
		
	listOfClasses := changeList changeList
		select: [:changeRecord | 
			changeRecord string beginsWith: 'Object subclass:'].
	listOfClasses reversed
		do: [:changeRecord | changeRecord fileIn].
		
	listOfChangeRecords := changeList changeList
		select: [:changeRecord | 
			((changeRecord string beginsWith: 'self') not) 
			& ((changeRecord string beginsWith: 'SystemOrganization addCategory:') not) 
			& ((changeRecord string beginsWith: 'Object subclass:') not)].
		
	listOfChangeRecordsRev := listOfChangeRecords reversed.
	listOfChangeRecordsRev
		do: [:changeRecord | changeRecord fileIn].
	self refresh.