test-for-possible-bugs
testUsesTheResultOfAnAddMessage

	self assertNoOccurrences: (self runLinterRule: #smallLintUsesAdd)