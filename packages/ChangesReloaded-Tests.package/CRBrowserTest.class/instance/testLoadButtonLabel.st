testing-functionality
testLoadButtonLabel
	
	self assert: 'Load Changes' equals: self changesBrowser loadButtonLabel.
	
	self selectFirstChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self assert: 'Load 1 Change' equals: self changesBrowser loadButtonLabel.
	
	self selectSecondChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self assert: 'Load 2 Changes' equals: self changesBrowser loadButtonLabel.