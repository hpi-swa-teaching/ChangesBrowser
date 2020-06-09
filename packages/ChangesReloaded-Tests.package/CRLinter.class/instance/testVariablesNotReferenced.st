test-for-miscellaneous
testVariablesNotReferenced

	self assertNoOccurrences: (self runLinterRule: #smallLintUnreferencedVariables)