test-for-miscellaneous
testIfTrueIfFalseReturnsInsteadOfAndOrs

	self assertNoOccurrences: (self runLinterRule: #ifTrueReturnsRule:)