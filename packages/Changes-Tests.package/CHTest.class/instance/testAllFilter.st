testing
testAllFilter

	| listSize |
	self loadSixthChangeFile.
	listSize := self changesBrowser changeListContent size.
	self changesBrowser   
		toggleShowClassCommentChanges;
		toggleShowMethodChanges;
		toggleShowDoItChanges;
		showAllChangesAndResetFilter.
	self 
		assert:'<on>method'  equals: ((self changesBrowser filterPairs at: 3) at: 1);
		assert:'<on>class comments'  equals: ((self changesBrowser filterPairs at: 4) at: 1);
		assert: '<on>do its' equals: ((self changesBrowser filterPairs at: 5) at: 1);
		assert: listSize equals: (self changesBrowser changeListContent size).
	
	self changesBrowser   
		toggleShowClassCommentChanges;
		toggleShowClassCommentChanges; 
		toggleShowMethodChanges;
		showAllChangesAndResetFilter.
	self 
		assert:'<on>method'  equals: ((self changesBrowser filterPairs at: 3) at: 1);
		assert:'<on>class comments'  equals: ((self changesBrowser filterPairs at: 4) at: 1);
		assert: '<on>do its' equals: ((self changesBrowser filterPairs at: 5) at: 1).