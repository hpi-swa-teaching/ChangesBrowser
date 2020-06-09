test-for-miscellaneous
dontTestLiteralValues
	"literally inherently broken"

	self assertNoOccurrences: (self runLinterRule: #smallLintLiteralValuesSpelling)