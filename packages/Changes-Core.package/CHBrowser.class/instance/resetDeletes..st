button-actions
resetDeletes: aChangeList
	
	| listOfDeletes |
	listOfDeletes := aChangeList select: [:changeRecord | changeRecord string beginsWith: 'Smalltalk removeClassNamed:'].
	listOfDeletes reversed do: [:changeRecord | changeRecord fileIn].