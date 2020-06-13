test-for-intention-revealing
testUsesDetectIfNoneInsteadOfAnySatisfy

	self assertNoOccurrences: (self runLinterRule: #smallLintContains)