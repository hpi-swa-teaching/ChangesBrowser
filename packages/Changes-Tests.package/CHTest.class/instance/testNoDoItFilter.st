testing
testNoDoItFilter
	
	self loadSixthChangeFile.
	self changesBrowser changesBrowserLogic toggleShowDoItChanges.
	self assert: 0 equals: 
		(self changesBrowser changeListContent count: [:str | str includesSubString: 'do it']).