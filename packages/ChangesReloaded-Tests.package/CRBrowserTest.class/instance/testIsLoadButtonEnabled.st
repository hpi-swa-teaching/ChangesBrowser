testing-functionality
testIsLoadButtonEnabled

	self assert: (self changesBrowser isLoadButtonEnabled not).
	self changesBrowser changeListItems first isPicked: true.
	self assert: (self changesBrowser isLoadButtonEnabled)