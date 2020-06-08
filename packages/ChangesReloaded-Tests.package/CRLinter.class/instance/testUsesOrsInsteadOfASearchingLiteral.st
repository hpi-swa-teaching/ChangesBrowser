testing-for-miscellaneous
testUsesOrsInsteadOfASearchingLiteral

	self assertNoOccurrences: (self runLinterRule: #smallLintSearchingLiteral)