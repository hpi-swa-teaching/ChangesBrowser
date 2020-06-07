testing
testIsItemSelectedAtAbsent

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 2 withSelection: true.
	self changesBrowser changeListItems: changeListItems.
	
	self assert: (self changesBrowser isChangeListItemSelectedAt: 1) equals: true.
	self assert: (self changesBrowser isChangeListItemSelectedAt: 42) equals: false.
	self assert: (self changesBrowser isChangeListItemSelectedAt: 0) equals: false.
	self assert: (self changesBrowser isChangeListItemSelectedAt: -1) equals: false