test-for-possible-bugs
testLiteralArrayContainsComma

	self assertNoOccurrences: (self runLinterRule: #smallLintLiteralArrayContainsComma)