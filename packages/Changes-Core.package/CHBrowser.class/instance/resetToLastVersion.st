buttonActions
resetToLastVersion

"Get all changes after the last version and file them in."
	| changeList listOfChangeRecords listOfCategories listOfClasses listOfChangeRecordsRev listOfDeletes |
	changeList := self imageStateListModel getChangeListForLatestImageState.
	"self resetCategories with: changeList..."
	listOfCategories := changeList changeList  "Reset categories"
		select: [:changeRecord | 
			changeRecord string beginsWith: 'SystemOrganization addCategory:'].
	listOfCategories reversed
		do: [:changeRecord | changeRecord fileIn].
		
	listOfClasses := changeList changeList  "Reset classes"
		select: [:changeRecord | 
			changeRecord string beginsWith: 'Object subclass:'].
	listOfClasses reversed
		do: [:changeRecord | changeRecord fileIn].
		
	listOfChangeRecords := changeList changeList  "Reset Change record"
		select: [:changeRecord | 
			((changeRecord string beginsWith: 'self') not) 
			& ((changeRecord string beginsWith: 'SystemOrganization addCategory:') not) 
			& ((changeRecord string beginsWith: 'Object subclass:') not)
			& ((changeRecord string beginsWith: 'Smalltalk removeClassNamed:') not)
			& ((changeRecord string beginsWith: '----') not)].
	listOfChangeRecordsRev := listOfChangeRecords.
	listOfChangeRecordsRev
		do: [:changeRecord | changeRecord fileIn].
		
	listOfDeletes := changeList changeList
		select: [:changeRecord | 
			changeRecord string beginsWith: 'Smalltalk removeClassNamed:'].
	listOfDeletes reversed
		do: [:changeRecord | changeRecord fileIn].
		
	self refresh.
