testing
testIsItemSelectedAt

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 2 withSelection: true.
	(changeListItems at: 2) isSelected: false.
	self changesBrowser changeListItems: changeListItems.
	
	self assert: (self changesBrowser isChangeListItemSelectedAt: 1) equals: true.
	self assert: (self changesBrowser isChangeListItemSelectedAt: 2) equals: false.