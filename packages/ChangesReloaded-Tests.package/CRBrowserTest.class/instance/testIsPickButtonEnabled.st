testing-functionality
testIsPickButtonEnabled
	
	self assert: (self changesBrowser isPickButtonEnabled not).
	
	self selectFirstChangeListItem.
	self assert: (self changesBrowser isPickButtonEnabled).
	