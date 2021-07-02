running
testIsSnapshot

	self assert: (self changeRecords at: 3) isSnapshot.
	self assert: (self changeRecords at: 23) isSnapshot.
	
	self assert: (self changeRecords at: 1) isSnapshot not.