test-for-possible-bugs
testEmptyExceptionHandler

	self assertNoOccurrences: (self runLinterRule: #smallLintEmptyExceptionHandler)