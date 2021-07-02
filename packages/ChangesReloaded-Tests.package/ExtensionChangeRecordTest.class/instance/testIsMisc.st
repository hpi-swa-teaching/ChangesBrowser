running
testIsMisc

	self assert: (self changeRecords at: 3) isMisc.
	self assert: (self changeRecords at: 23) isMisc.
	
	
	self assert: (self changeRecords at: 1) isMisc not.
	self assert: (self changeRecords at: 2) isMisc not.
	self assert: (self changeRecords at: 5) isMisc not.
	 