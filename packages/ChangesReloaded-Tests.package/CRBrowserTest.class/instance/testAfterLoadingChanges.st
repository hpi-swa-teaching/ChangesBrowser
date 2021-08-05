testing-functionality
testAfterLoadingChanges
	
	self assert: self changesBrowser hasChanges.
	self changesBrowser
		unpickAllChanges;
		loadPickedChanges.
	self deny: self changesBrowser hasChanges.