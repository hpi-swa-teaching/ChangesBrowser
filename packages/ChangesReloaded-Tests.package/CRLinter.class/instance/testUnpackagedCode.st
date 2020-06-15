test-for-possible-bugs
testUnpackagedCode

	self assertNoOccurrences: (self runLinterRule: #smallLintUnpackagedCode)