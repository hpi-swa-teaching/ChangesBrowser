testing
testChangeMethod

	self loadFirstChangeFile.
	self changesBrowser changeListListSelectionAt: 2 put: true.
	self changesBrowser resetSelectedMethods.
	self assert: dummyClass dummyFunction1 equals: 'version 1'.
	self loadSecondChangeFile.
	self changesBrowser changeListListSelectionAt: 2 put: true.
	self changesBrowser resetSelectedMethods.
	self assert: dummyClass dummyFunction1 equals: 'version 2'.