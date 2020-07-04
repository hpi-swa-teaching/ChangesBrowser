test-for-possible-bugs
testUnconditionalRecursion

	self assertNoOccurrences: (self runLinterRule: #smallLintUnconditionalRecursion)