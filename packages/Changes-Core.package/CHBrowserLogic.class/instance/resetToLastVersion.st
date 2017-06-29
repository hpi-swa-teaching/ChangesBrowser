button-actions
resetToLastVersion

"Get all changes after the last version and file them in."
	| changeList listOfChangeRecords listOfCategories listOfClasses listOfChangeRecordsRev listOfDeletes |
	changeList := self imageStateListModel getChangeListForLatestImageState.

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
			& ((changeRecord string beginsWith: 'Object subclass:') not)
			& ((changeRecord string beginsWith: 'Smalltalk removeClassNamed:') not)
			& ((changeRecord string beginsWith: '----') not)].
	listOfChangeRecordsRev := listOfChangeRecords reversed.
	listOfChangeRecordsRev
		do: [:changeRecord | changeRecord fileIn].
		
	listOfDeletes := changeList changeList
		select: [:changeRecord | 
			changeRecord string beginsWith: 'Smalltalk removeClassNamed:'].
	listOfDeletes reversed
		do: [:changeRecord | changeRecord fileIn].
		
	self refresh.
