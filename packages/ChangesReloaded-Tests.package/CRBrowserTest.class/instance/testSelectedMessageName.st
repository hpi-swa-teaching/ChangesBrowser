testing-ui
testSelectedMessageName

	self assert: (self changesBrowser selectedMessageName isNil).
	
	self changesBrowser changeListSelectionIndex: self magicSelectionIndexForChangeDescriptionStrings.
	self assert: (self changesBrowser selectedMessageName == #functionOrder4).
	
	self changesBrowser changeListSelectionIndex: 1.
	self assert: (self changesBrowser selectedMessageName isNil)