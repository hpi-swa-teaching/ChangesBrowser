running
testIsMisc

	self assert: (self changeRecords at: 3) isMisc.
	self assert: (self changeRecords at: 23) isMisc.
	
	
	self deny: (self changeRecords at: 1) isMisc.
	self deny: (self changeRecords at: 2) isMisc.
	self deny: (self changeRecords at: 5) isMisc.
	 