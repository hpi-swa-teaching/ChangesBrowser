test-for-spelling
dontTestLiteralValues
	"literally inherently broken"

	self assertNoOccurrences: (self runLinterRule: #smallLintLiteralValuesSpelling)