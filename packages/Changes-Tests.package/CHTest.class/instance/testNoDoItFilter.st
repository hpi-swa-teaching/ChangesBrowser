testing
testNoDoItFilter
	
	self loadSixthChangeFile.
	self changesBrowserLogic toggleShowDoItChanges.
	self assert: 0 equals: 
		(self changesBrowserLogic changeListContent count: [:str | str includesSubString: 'do it']).