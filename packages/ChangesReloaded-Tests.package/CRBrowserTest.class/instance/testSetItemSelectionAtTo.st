testing
testSetItemSelectionAtTo

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 2 withSelection: false.
	(changeListItems at: 2) isSelected: true.
	self changesBrowser changeListItems: changeListItems.
	
	self assert: (self changesBrowser isItemSelectedAt: 1) equals: false.
	self assert: (self changesBrowser isItemSelectedAt: 2) equals: true.
	self changesBrowser setItemSelectionAt: 1 to: true.
	
	self assert: (self changesBrowser isItemSelectedAt: 1) equals: true.
	self assert: (self changesBrowser isItemSelectedAt: 2) equals: true.
	
	self changesBrowser setItemSelectionAt: 2 to: false.
	self assert: (self changesBrowser isItemSelectedAt: 1) equals: true.
	self assert: (self changesBrowser isItemSelectedAt: 2) equals: false