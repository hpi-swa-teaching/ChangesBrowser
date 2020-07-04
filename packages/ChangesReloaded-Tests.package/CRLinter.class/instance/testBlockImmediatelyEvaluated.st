test-unnecessary-code
testBlockImmediatelyEvaluated

	self assertNoOccurrences: (self runLinterRule: #smallLintExtraBlock)