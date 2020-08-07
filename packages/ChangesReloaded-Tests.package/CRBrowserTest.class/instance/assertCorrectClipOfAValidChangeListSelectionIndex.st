accessing
assertCorrectClipOfAValidChangeListSelectionIndex

	self changesBrowser changeListSelectionIndex: 4.
	self assert: self changesBrowser changeListSelectionIndex = 4.
	self changesBrowser clipChangeListSelectionIndexToValidValue.
	self assert: self changesBrowser changeListSelectionIndex = 4
