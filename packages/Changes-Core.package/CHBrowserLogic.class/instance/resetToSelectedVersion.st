resetting
resetToSelectedVersion
	| changeList listOfCategories listOfClasses listOfChangeRecords listOfChangeRecordsRev listOfDeletes|
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
			& ((changeRecord string beginsWith: 'Object subclass:') not)
			& ((changeRecord string beginsWith: 'Smalltalk removeClassNamed:') not)
			& ((changeRecord string beginsWith: '----') not)].
	listOfChangeRecordsRev := listOfChangeRecords reversed.
	listOfChangeRecordsRev
		do: [:changeRecord | changeRecord fileIn].
		
	"Smalltalk enforces a very strange ordering of ChangeRecords, therefor stuff has to be hardcoded"	
	listOfDeletes := changeList changeList
		select: [:changeRecord | 
			changeRecord string beginsWith: 'Smalltalk removeClassNamed:'].
	listOfDeletes reversed
		do: [:changeRecord | changeRecord fileIn].
		
	self refresh.