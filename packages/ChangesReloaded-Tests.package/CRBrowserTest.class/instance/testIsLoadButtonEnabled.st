testing-functionality
testIsLoadButtonEnabled

	self assert: (self changesBrowser isLoadButtonEnabled not).
	self changesBrowser changeListItems first pick.
	self assert: (self changesBrowser isLoadButtonEnabled)