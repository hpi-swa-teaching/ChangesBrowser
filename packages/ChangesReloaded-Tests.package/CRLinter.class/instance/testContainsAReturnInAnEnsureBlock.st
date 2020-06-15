test-for-possible-bugs
testContainsAReturnInAnEnsureBlock

	self assertNoOccurrences: (self runLinterRule: #smallLintReturnInEnsure)