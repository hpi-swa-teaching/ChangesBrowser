testing-functionality
testAfterLoadingChanges
	
	self assert: self changesBrowser hasChanges.
	self changesBrowser
		unpickAll;
		loadPickedChanges.
	self assert: self changesBrowser hasChanges not.