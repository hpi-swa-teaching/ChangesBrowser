test-unnecessary-code
testAssignmentHasNoEffect

	self assertNoOccurrences: (self runLinterRule: #smallLintAssignmentWithoutEffect)