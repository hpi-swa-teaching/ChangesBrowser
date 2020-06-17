constructors
newWithSelector: aSelectorSymbol andClass: aClassSymbol

	| newHistoryListItem |
	newHistoryListItem := CRHistoryListItem new
		selector: aSelectorSymbol;
		class: aClassSymbol;
		yourself.

	^ newHistoryListItem