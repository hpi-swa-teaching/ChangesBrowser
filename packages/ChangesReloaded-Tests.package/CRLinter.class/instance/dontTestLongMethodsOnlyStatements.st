test-for-coding-styles
dontTestLongMethodsOnlyStatements
	"Some methods, like testSetItemSelectionAtTo have more than 10 statements and that's fine."

	self assertNoOccurrences: (self runLinterRule: #longMethod:)