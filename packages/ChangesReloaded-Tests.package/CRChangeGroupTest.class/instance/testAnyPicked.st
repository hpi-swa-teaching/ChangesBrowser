testing
testAnyPicked

	self changeGroup pickAt: 2.
	self assert: self changeGroup anyPicked.
	
	self changeGroup pickAt: 0.
	self assert: self changeGroup anyPicked not.