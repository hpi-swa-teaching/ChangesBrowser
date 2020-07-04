test-unnecessary-code
brokenTestInstanceVariablesNotReadAndWritten
	"literally broken"

	self assertNoOccurrences: (self runLinterRule: #smallLintOnlyReadOrWrittenVariable)