test-for-possible-bugs
testClassInstanceVariableNotInitialized

	self assertNoOccurrences: (self runLinterRule: #smallLintClassInstVarNotInitialized)