test-for-possible-bugs
testMissingSuperSendsInSelectedMethods

	self assertNoOccurrences: (self runLinterRule: #smallLintMissingSuperSends)