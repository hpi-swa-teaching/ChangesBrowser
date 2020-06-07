test-for-bugs
testSendsUnknownMessageToGlobal

	self assertNoOccurrences: (self runLinterRule: #smallLintSendsUnknownMessageToGlobal)