test-for-bugs
testBooleanPrecedenceRule

	self assertNoOccurrences: (self runLinterRule: #smallLintBooleanPrecedence)