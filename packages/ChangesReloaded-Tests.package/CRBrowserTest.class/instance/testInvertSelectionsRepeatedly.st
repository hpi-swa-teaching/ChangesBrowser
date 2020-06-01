testing
testInvertSelectionsRepeatedly

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 3 with: false.
	(changeListItems at: 2) isSelected: true.
	self changesBrowser changeListItems: changeListItems.
	
	self assert: #(false true false) asOrderedCollection equals: (self changesBrowser changeListItems collect: [:each | each isSelected]).
	self changesBrowser invertSelection.
	self assert: #(true false true) asOrderedCollection equals: (self changesBrowser changeListItems collect: [:each | each isSelected]).
	self changesBrowser invertSelection.
	self assert: #(false true false) asOrderedCollection equals: (self changesBrowser changeListItems collect: [:each | each isSelected])