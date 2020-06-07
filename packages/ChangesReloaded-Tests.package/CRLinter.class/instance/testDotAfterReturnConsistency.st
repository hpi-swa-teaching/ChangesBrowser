test-for-coding-styles
testDotAfterReturnConsistency

	self assertAll: (self runLinterRule: #dotAfterReturn) areBelowThreshold: 0.95