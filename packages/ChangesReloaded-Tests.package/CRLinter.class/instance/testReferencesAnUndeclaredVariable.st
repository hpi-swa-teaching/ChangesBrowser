test-for-bugs
testReferencesAnUndeclaredVariable

	self assertNoOccurrences: (self runLinterRule: #smallLintUndeclaredReference)