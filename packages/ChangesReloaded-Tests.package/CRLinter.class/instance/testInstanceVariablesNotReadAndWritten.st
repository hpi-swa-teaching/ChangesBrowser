test-unnecessary-code
testInstanceVariablesNotReadAndWritten

	self assertNoOccurrences: (self runLinterRule: #smallLintOnlyReadOrWrittenVariable)