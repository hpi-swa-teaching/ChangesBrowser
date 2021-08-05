running
testIsStartup

	self assert: (self changeRecords at: 23) isStartup.
	
	self deny: (self changeRecords at: 1) isStartup.
	self deny: (self changeRecords at: 3) isStartup.