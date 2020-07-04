test-for-intention-revealing
testUsesWhileTrueInsteadOfToDo

	self assertNoOccurrences: (self runLinterRule: #smallLintWhileTrue)