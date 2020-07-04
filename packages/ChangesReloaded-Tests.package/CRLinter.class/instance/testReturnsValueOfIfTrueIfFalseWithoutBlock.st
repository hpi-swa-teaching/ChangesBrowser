test-for-possible-bugs
testReturnsValueOfIfTrueIfFalseWithoutBlock

	self assertNoOccurrences: (self runLinterRule: #smallLintReturnsIfTrue)