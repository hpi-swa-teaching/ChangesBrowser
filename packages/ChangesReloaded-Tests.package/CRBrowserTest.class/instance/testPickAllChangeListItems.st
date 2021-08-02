testing-functionality
testPickAllChangeListItems
	
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isPicked not]).
	
	self changesBrowser pickAll.
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isPicked])
