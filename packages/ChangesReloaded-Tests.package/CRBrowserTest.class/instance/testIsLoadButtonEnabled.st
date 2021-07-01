testing-functionality
testIsLoadButtonEnabled

	self assert: (self changesBrowser isLoadButtonEnabled not).
	self selectFirstChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self assert: (self changesBrowser isLoadButtonEnabled)