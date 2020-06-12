constructors
newWithSelector: aSymbol andChange: aCRChangeListItem

	| newHistoryListItem |
	newHistoryListItem := CRHistoryListItem new
		selector: aSymbol;
		yourself.
	newHistoryListItem history add: aCRChangeListItem.

	^ newHistoryListItem