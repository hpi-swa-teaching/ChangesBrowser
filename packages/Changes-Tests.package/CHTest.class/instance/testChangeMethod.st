testing
testChangeMethod
	self loadFirstChangeFile.
	self changesBrowser changesBrowserLogic 
		changeListSelectionAt: 2 put: true.
	self changesBrowserLogic resetSelectedMethods.
	self assert: 'version 1' equals: self dummyObject dummyFunction1.
	
	self loadSecondChangeFile.
	self changesBrowser changesBrowserLogic 
		changeListSelectionAt: 2 put: true.
	self changesBrowserLogic resetSelectedMethods.
	self assert: 'version 2' equals: self dummyObject dummyFunction1