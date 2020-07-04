test-for-possible-bugs
testTemporariesReadBeforeWritten

	self assertNoOccurrences: (self runLinterRule: #smallLintTempsReadBeforeWritten)