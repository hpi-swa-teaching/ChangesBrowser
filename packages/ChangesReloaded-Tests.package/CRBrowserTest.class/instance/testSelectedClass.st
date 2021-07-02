testing-functionality
testSelectedClass

	self assert: (self changesBrowser selectedClass isNil).
	
	self selectMethodChangeListItem.
	self assert: (self changesBrowser selectedClass == CRChangesDummyClass)