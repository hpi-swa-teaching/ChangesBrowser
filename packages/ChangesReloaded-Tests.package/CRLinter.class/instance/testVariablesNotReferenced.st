test-unnecessary-code
testVariablesNotReferenced

	self assertNoOccurrences: (self runLinterRule: #smallLintUnreferencedVariables)