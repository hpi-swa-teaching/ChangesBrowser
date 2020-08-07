accessing
testRoundChangeListSelectionIndexToValidValue

	self assertCorrectRoundUpOfChangeListSelectionIndex.
	
	self changesBrowser changeListSelectionIndex: 4.
	self assert: self changesBrowser changeListSelectionIndex = 4.
	self changesBrowser roundChangeListSelectionIndexToValidValue.
	self assert: self changesBrowser changeListSelectionIndex = 4.
	
	self assertCorrectRoundDownOfChangeListSelectionIndex