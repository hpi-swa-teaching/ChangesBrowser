test-for-possible-bugs
testAddDependantMethodsLessOrEqualThanRemoveDependents

	self assertNoOccurrences: (self runLinterRule: #smallLintAddRemoveDependents)