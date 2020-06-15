test-for-coding-styles
testLongMethodsOnlyStatements

	self assertNoOccurrences: (self runLinterRule: #longMethod:)