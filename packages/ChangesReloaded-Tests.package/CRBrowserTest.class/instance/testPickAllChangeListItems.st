testing-functionality
testPickAllChangeListItems
	
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isPicked not]).
	
	self changesBrowser pickAllChanges.
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isPicked])
