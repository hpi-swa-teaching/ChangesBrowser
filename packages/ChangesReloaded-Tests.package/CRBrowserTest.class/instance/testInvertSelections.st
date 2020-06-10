testing
testInvertSelections

	| changeListItems |
	changeListItems := self createDummyChangeListItems: 5 withSelection: false.
	(changeListItems at: 2) isSelected: true.
	(changeListItems at: 3) isSelected: true.
	self changesBrowser methodHistories: (self changesBrowser getMethodHistoriesFrom: changeListItems).
	
	self assert: #(false true false false true) asOrderedCollection equals: (self changesBrowser changeListItems collect: [:each | each isSelected]).
	self changesBrowser invertSelection.
	self assert: #(true false true true false) asOrderedCollection equals: (self changesBrowser changeListItems collect: [:each | each isSelected])