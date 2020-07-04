test-for-bugs
testOverridesASpecialMessage

	self assertNoOccurrences: (self runLinterRule: #smallLintOverridesSpecialMessage)