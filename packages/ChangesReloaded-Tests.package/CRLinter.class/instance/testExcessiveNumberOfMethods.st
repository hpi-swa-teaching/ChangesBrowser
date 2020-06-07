testing-for-miscellaneous
testExcessiveNumberOfMethods

	self assertNoOccurrences: (self runLinterRule: #smallLintExcessiveMethods)