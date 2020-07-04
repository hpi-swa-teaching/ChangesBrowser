test-for-miscellaneous
testNonBlocksInSpecialMessages

	self assertNoOccurrences: (self runLinterRule: #smallLintIfTrueBlocks)