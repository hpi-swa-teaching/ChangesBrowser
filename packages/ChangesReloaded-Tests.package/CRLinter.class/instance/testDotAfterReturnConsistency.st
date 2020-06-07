test-for-bugs
testDotAfterReturnConsistency

	self assertAll: (self runLinterRule: #dotAfterReturn) areBelowThreshold: 0.95