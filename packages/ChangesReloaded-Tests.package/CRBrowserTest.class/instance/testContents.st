testing-ui
testContents

	self assert: (self changesBrowser contents = '').
	
	self changesBrowser changeListSelectionIndex: 3.
	self assert: (self changesBrowser contents find: TextColor red) = (1 to: self changesBrowser contents size).
	
	self changesBrowser changeListSelectionIndex: 1.
	self assert: (self changesBrowser contents attributesAt: 1) size = 0.
	
	"self changesBrowser changeListSelectionIndex: 2.
	self assert:  (1 to: 16) equals: (self changesBrowser contents find: TextEmphasis normal).
	self assert: (17 to: 31) equals: (self changesBrowser contents find: TextColor red)."
	"self assert: (32 to: 44)  equals: (self changesBrowser contents find: TextColor blue)."
	