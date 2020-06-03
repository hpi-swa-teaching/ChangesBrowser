testing
testSetItemSelectionAtInvalidIndex

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 2 withSelection: false.
	self changesBrowser changeListItems: changeListItems.
	
	self should: [changesBrowser setItemSelectionAt: -100 to: false] raise: Error.
	self should: [changesBrowser setItemSelectionAt: 0 to: true] raise: Error.
	self should: [changesBrowser setItemSelectionAt: 42 to: false] raise: Error.