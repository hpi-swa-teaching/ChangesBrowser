testing
testIsItemSelectedAtAbsent

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 5 with: true.
	self changesBrowser changeListItems: changeListItems.
	
	self assert: (self changesBrowser isItemSelectedAt: 1) equals: true.
	self assert: (self changesBrowser isItemSelectedAt: 42) equals: false.
	self assert: (self changesBrowser isItemSelectedAt: 0) equals: false.
	self assert: (self changesBrowser isItemSelectedAt: -1) equals: false