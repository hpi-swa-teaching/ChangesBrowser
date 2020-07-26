testing-functionality
testIsPickButtonEnabled
	
	self changesBrowser changeListSelectionIndex: 1.
	self assert: (self changesBrowser isPickButtonEnabled).

	self changesBrowser changeListSelectionIndex: 0.
	self assert: (self changesBrowser isPickButtonEnabled not)