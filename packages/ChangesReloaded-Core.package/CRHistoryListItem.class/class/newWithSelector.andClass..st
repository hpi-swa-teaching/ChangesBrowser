constructors
newWithSelector: aSelectorSymbol andClass: aClassSymbol

	| newHistoryListItem |
	newHistoryListItem := CRHistoryListItem new
		selector: aSelectorSymbol;
		className: aClassSymbol name;
		yourself.

	^ newHistoryListItem