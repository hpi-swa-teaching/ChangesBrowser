constructors
newWithSelector: aSelectorSymbol class: aClassSymbol andChange: aCRChangeListItem

	| newHistoryListItem |
	newHistoryListItem := CRHistoryListItem new
		selector: aSelectorSymbol;
		class: aClassSymbol;
		yourself.
	newHistoryListItem history add: aCRChangeListItem.

	^ newHistoryListItem