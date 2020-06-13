test-unnecessary-code
testTemporaryVariablesNotReadAndWritten

	self assertNoOccurrences: (self runLinterRule: #smallLintOnlyReadOrWrittenTemporary)