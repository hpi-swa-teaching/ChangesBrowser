running
testIsSaveOrQuit

	self assert: (self changeRecords at: 3) isSaveOrQuit.
	
	self assert: (self changeRecords at: 1) isSaveOrQuit not.
	self assert: (self changeRecords at: 23) isSaveOrQuit not.