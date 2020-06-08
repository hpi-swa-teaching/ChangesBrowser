testing-for-miscellaneous
testUsesDetectIfNoneInsteadOfAnySatisfy

	self assertNoOccurrences: (self runLinterRule: #smallLintContains)