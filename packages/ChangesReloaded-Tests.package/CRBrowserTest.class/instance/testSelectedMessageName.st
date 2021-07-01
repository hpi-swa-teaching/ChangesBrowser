testing-functionality
testSelectedMessageName

	self assert: (self changesBrowser selectedMessageName isNil).
	
	self selectMethodChangeListItem.
	self assert: (self changesBrowser selectedMessageName == #functionOrder5)