constructors
newWithSelector: aSelectorSymbol andClass: aClassSymbol

	| newHistoryListItem |
	newHistoryListItem := CRHistoryListItem new
		selector: aSelectorSymbol;
		nameOfAffectedClass: aClassSymbol name;
		yourself.

	^ newHistoryListItem