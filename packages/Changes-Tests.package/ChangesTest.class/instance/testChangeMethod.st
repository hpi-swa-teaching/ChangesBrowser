testing
testChangeMethod

	self loadFirstChangeFile.
	self changesBrowser
		changeListListSelectionAt: 2 put: true.
	self changesBrowser changesBrowserLogic
		resetSelectedMethods.
	self assert: 'version 1' equals: self dummyClass dummyFunction1.
	
	self loadSecondChangeFile.
	self changesBrowser
		changeListListSelectionAt: 2 put: true.
	self changesBrowser changesBrowserLogic
		resetSelectedMethods.
	self assert: 'version 2' equals: self dummyClass dummyFunction1.