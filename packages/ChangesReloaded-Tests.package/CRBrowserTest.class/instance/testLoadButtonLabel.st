testing-functionality
testLoadButtonLabel
	
	self assert: (self changesBrowser loadButtonLabel = 'Pick changes to load them').
	
	self changesBrowser changeListItems first pick.
	self assert: (self changesBrowser loadButtonLabel = 'Load 1 change').
	
	self changesBrowser changeListItems second pick.
	self assert: (self changesBrowser loadButtonLabel = 'Load 2 changes')