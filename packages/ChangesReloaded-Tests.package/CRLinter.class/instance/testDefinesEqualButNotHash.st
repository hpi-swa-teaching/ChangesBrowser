test-for-possible-bugs
testDefinesEqualButNotHash

	self assertNoOccurrences: (self runLinterRule: #smallLintDefinesEqualNotHash)