accessing
assertCorrectClipOfChangeListSelectionIndexToLowerBound

	self changesBrowser changeListSelectionIndex: 0.
	self assert: self changesBrowser changeListSelectionIndex = 0.
	self changesBrowser clipChangeListSelectionIndexToValidValue.
	self assert: self changesBrowser changeListSelectionIndex = 1.
	
	self changesBrowser changeListSelectionIndex: -5.
	self assert: self changesBrowser changeListSelectionIndex = -5.
	self changesBrowser clipChangeListSelectionIndexToValidValue.
	self assert: self changesBrowser changeListSelectionIndex = 1