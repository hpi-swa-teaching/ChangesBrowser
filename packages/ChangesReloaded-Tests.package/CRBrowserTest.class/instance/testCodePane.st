testing-ui
testCodePane

	self assert: (self changesBrowser contents = '').
	
	self changesBrowser changeListSelectionIndex: 3.
	self assert: (self changesBrowser contents colorAt: 1) equals: Color red.
	
	self changesBrowser changeListSelectionIndex: 1.
	self assert: (self changesBrowser contents colorAt: 1) equals: Color black.
	
	self changesBrowser changeListSelectionIndex: 2.
	self assert: (self changesBrowser contents colorAt: 1) equals: Color black.
	self assert: (self changesBrowser contents colorAt: 20) equals: Color red.
	self assert: (self changesBrowser contents colorAt: 35) equals: Color blue.
	