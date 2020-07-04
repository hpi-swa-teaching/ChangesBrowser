test-for-possible-bugs
testSendsDifferentSuperMessage

	self assertNoOccurrences: (self runLinterRule: #smallLintSendsDifferentSuper)