testing-functionality
testIsLoadButtonEnabled

	self deny: self changesBrowser isLoadButtonEnabled.
	
	self selectFirstChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self assert: self changesBrowser isLoadButtonEnabled.