testing-functionality
testLoadButtonLabel
	
	self assert: (self changesBrowser loadButtonLabel = 'Pick changes to load them').
	
	self changesBrowser changeListItems first isPicked: true.
	self assert: (self changesBrowser loadButtonLabel = 'Load 1 change').
	
	self changesBrowser changeListItems second isPicked: true.
	self assert: (self changesBrowser loadButtonLabel = 'Load 2 changes')