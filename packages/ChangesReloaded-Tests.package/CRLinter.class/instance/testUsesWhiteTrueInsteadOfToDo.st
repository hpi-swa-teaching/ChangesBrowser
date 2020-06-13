test-for-intention-revealing
testUsesWhiteTrueInsteadOfToDo

	self assertNoOccurrences: (self runLinterRule: #smallLintWhileTrue)