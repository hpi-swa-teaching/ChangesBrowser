test-for-intention-revealing
testToDoLoopAlsoIncrementsACounter

	self assertNoOccurrences: (self runLinterRule: #smallLintToDoWithIncrement)