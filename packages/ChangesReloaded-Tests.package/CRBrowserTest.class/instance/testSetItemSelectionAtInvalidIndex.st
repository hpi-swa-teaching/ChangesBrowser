testing
testSetItemSelectionAtInvalidIndex

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 2 withSelection: false.
	self changesBrowser changeListItems: changeListItems.
	
	self should: [changesBrowser setChangeListItemSelectionAt: -100 to: false] raise: Error.
	self should: [changesBrowser setChangeListItemSelectionAt: 0 to: true] raise: Error.
	self should: [changesBrowser setChangeListItemSelectionAt: 42 to: false] raise: Error.