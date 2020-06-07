test-for-bugs
testArithmeticPrecedenceRule

	self assertNoOccurrences: (self runLinterRule: #precedenceRule)