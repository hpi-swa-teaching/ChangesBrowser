test-for-bugs
testTemporaryVariableCapitalization

	self assertNoOccurrences: (self runLinterRule: #smallLintTemporaryVariableCapitalization)