testing
testAnyPicked

	self changeGroup chooseVersionAt: 1.
	self assert: self changeGroup anyPicked.
	
	self changeGroup unpickAll.
	self deny: self changeGroup anyPicked.