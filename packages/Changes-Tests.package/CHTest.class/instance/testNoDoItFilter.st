testing
testNoDoItFilter
	
	self loadSixthChangeFile.
	self changesBrowser changesBrowserLogic changeList toggleShowDoItChanges.
	self assert: 0 equals: 
		(self changesBrowser changeListList count: [:str | str includesSubString: 'do it']).