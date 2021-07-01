testing-functionality
testLoadButtonLabel
	
	self assert: (self changesBrowser loadButtonLabel = 'Pick changes to load them').
	
	self selectFirstChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self assert: (self changesBrowser loadButtonLabel = 'Load 1 change').
	
	self selectSecondChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self assert: (self changesBrowser loadButtonLabel = 'Load 2 changes')