testing
testSetItemSelectionAtTo

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 2 withSelection: false.
	(changeListItems at: 2) isSelected: true.
	self changesBrowser changeListItems: changeListItems.
	
	self assert: (self changesBrowser isChangeListItemSelectedAt: 1) equals: false.
	self assert: (self changesBrowser isChangeListItemSelectedAt: 2) equals: true.
	self changesBrowser setChangeListItemSelectionAt: 1 to: true.
	
	self assert: (self changesBrowser isChangeListItemSelectedAt: 1) equals: true.
	self assert: (self changesBrowser isChangeListItemSelectedAt: 2) equals: true.
	
	self changesBrowser setChangeListItemSelectionAt: 2 to: false.
	self assert: (self changesBrowser isChangeListItemSelectedAt: 1) equals: true.
	self assert: (self changesBrowser isChangeListItemSelectedAt: 2) equals: false