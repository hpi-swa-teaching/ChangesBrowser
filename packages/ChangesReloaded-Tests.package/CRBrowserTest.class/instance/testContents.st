testing-ui
testContents

	self assert: (self changesBrowser contents = '').
	
	self changesBrowser changeListSelectionIndex: 3.
	self assert: Color red equals:  (self changesBrowser contents colorAt: 1).
	
	self changesBrowser changeListSelectionIndex: 1.
	self assert: Color black equals: (self changesBrowser contents colorAt: 1).
	
	self changesBrowser changeListSelectionIndex: 2.
	self assert: Color black equals: (self changesBrowser contents colorAt: 1).
	self assert:  Color red equals: (self changesBrowser contents colorAt: 20).
	self assert: Color blue  equals: (self changesBrowser contents colorAt: 35).
	