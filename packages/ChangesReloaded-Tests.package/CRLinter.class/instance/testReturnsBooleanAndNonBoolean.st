test-for-possible-bugs
testReturnsBooleanAndNonBoolean

	self assertNoOccurrences: (self runLinterRule: #smallLintReturnsBooleanAndOther)