test-for-miscellaneous
brokenVariableIsOnlyAssignedALiteralValue

	self assertNoOccurrences: (self runLinterRule: #smallLintVariableAssignedLiteral)