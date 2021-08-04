testing-functionality
testAfterLoadingChanges
	
	self assert: self changesBrowser hasChanges.
	self changesBrowser
		unpickAllChanges;
		loadPickedChanges.
	self assert: self changesBrowser hasChanges not.