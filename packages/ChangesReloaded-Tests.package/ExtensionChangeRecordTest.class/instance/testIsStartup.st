running
testIsStartup

	self assert: (self changeRecords at: 23) isStartup.
	
	self assert: (self changeRecords at: 1) isStartup not.
	self assert: (self changeRecords at: 3) isStartup not.