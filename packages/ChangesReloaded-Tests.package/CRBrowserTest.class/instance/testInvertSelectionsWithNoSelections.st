testing
testInvertSelectionsWithNoSelections

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 4 withSelection: false.
	self changesBrowser changeListItems: changeListItems.
	
	self assert: #(false false false false) asOrderedCollection equals: (self changesBrowser changeListItems collect: [:each | each isSelected]).
	self changesBrowser invertSelection.
	self assert: #(true true true true) asOrderedCollection equals: (self changesBrowser changeListItems collect: [:each | each isSelected])