assertions
assertNoChangesAreLoadedWhenAllUnpicked
	
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isInImage not]).
	self changesBrowser loadPickedChanges.
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isInImage not])
