testing-functionality
testIsPickButtonEnabled
	
	self deny: self changesBrowser isPickButtonEnabled.
	
	self selectFirstChangeListItem.
	self assert: self changesBrowser isPickButtonEnabled.
	