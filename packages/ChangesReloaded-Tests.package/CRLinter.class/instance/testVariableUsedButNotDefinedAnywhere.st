test-for-bugs
testVariableUsedButNotDefinedAnywhere

	self assertNoOccurrences: (self runLinterRule: #smallLintVariableNotDefined)