test-unnecessary-code
testCheckForSameStatementsAtEndOfIfTrueIfFalseBlocks

	self assertNoOccurrences: (self runLinterRule: #smallLintEndTrueFalse)