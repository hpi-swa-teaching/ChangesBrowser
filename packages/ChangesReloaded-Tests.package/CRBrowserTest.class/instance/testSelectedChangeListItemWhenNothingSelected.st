testing-functionality
testSelectedChangeListItemWhenNothingSelected
	
	self changesBrowser groupIndex: 0.
	self assert: (self changesBrowser selectedChangeListItem isNil).
	
	self selectFirstChangeListItem.
	self changesBrowser versionIndex: 0.
	self assert: (self changesBrowser selectedChangeListItem isNil)