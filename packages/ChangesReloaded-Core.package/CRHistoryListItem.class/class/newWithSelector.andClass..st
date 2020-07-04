constructors
newWithSelector: aSelectorSymbol andClass: aClassSymbol

	| newHistoryListItem |
	newHistoryListItem := CRHistoryListItem new
		selector: aSelectorSymbol;
		affectedClass: aClassSymbol name;
		yourself.

	^ newHistoryListItem