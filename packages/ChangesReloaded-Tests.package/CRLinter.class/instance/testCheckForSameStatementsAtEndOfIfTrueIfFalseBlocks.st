test-for-miscellaneous
testCheckForSameStatementsAtEndOfIfTrueIfFalseBlocks

	self assertNoOccurrences: (self runLinterRule: #smallLintEndTrueFalse)