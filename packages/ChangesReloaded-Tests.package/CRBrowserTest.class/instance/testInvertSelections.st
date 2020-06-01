testing
testInvertSelections

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 5 with: false.
	(changeListItems at: 2) isSelected: true.
	(changeListItems at: 5) isSelected: true.
	self changesBrowser changeListItems: changeListItems.
	
	self assert: #(false true false false true) asOrderedCollection equals: (self changesBrowser changeListItems collect: [:each | each isSelected]).
	self changesBrowser invertSelection.
	self assert: #(true false true true false) asOrderedCollection equals: (self changesBrowser changeListItems collect: [:each | each isSelected])