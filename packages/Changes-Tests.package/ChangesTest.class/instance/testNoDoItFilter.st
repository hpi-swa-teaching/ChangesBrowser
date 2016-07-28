testing
testNoDoItFilter
	
	self loadSixthChangeFile.
	self changesBrowser showNoDoItsChanges.
	self assert: (self changesBrowser showingNoDoItsString) equals: '<yes>no do its'.
	self assert: 0 equals: ((self changesBrowser changeListList select: [:str | str includesSubString: 'do it']) size).