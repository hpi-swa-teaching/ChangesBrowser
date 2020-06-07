testing-for-miscellaneous
testExcessiveNumberOfArguments

	self assertNoOccurrences: (self runLinterRule: #smallLintExcessiveArguments)