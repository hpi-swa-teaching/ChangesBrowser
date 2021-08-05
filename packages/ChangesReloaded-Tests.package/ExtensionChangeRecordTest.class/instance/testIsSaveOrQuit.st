running
testIsSaveOrQuit

	self assert: (self changeRecords at: 3) isSaveOrQuit.
	
	self deny: (self changeRecords at: 1) isSaveOrQuit.
	self deny: (self changeRecords at: 23) isSaveOrQuit.