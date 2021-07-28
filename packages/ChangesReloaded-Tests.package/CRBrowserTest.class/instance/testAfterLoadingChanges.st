testing-functionality
testAfterLoadingChanges

	self assert: self changesBrowser hasChanges.
	self assert: 0 equals: self changesBrowser pickedChangeListItems size.
	self changesBrowser loadPickedChanges.
	self assert: self changesBrowser hasChanges not.