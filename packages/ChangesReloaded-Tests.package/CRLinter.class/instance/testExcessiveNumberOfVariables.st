testing-for-miscellaneous
testExcessiveNumberOfVariables

	self assertNoOccurrences: (self runLinterRule: #smallLintExcessiveVariables)