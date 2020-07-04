constructors
newWithSelector: aSelectorSymbol andClass: aClassSymbol

	| newHistoryListItem |
	newHistoryListItem := CRHistoryListItem new
		selector: aSelectorSymbol;
		classNameOfChanges: aClassSymbol name;
		yourself.

	^ newHistoryListItem