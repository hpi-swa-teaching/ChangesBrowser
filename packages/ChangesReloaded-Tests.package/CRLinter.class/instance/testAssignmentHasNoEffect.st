test-for-miscellaneous
testAssignmentHasNoEffect

	self assertNoOccurrences: (self runLinterRule: #smallLintAssignmentWithoutEffect)