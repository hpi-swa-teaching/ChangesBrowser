testing-ui
testSelectedClass

	self assert: (self changesBrowser selectedClass isNil).
	
	self changesBrowser changeListSelectionIndex: self magicSelectionIndexForChangeDescriptionStrings.
	self assert: (self changesBrowser selectedClass == CRChangesDummyClass).
	
	self changesBrowser changeListSelectionIndex: 1.
	self assert: (self changesBrowser selectedMessageName isNil)
	