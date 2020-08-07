accessing
assertCorrectClipOfChangeListSelectionIndexToUpperBound
	
	self changesBrowser changeListSelectionIndex: self changesBrowser changeListItems size.
	self assert: self changesBrowser changeListSelectionIndex = self changesBrowser changeListItems size.
	self changesBrowser clipChangeListSelectionIndexToValidValue.
	self assert: self changesBrowser changeListSelectionIndex = self changesBrowser changeListItems size.
	
	self changesBrowser changeListSelectionIndex: (self changesBrowser changeListItems size + 1).
	self assert: self changesBrowser changeListSelectionIndex = (self changesBrowser changeListItems size + 1).
	self changesBrowser clipChangeListSelectionIndexToValidValue.
	self assert: self changesBrowser changeListSelectionIndex = self changesBrowser changeListItems size