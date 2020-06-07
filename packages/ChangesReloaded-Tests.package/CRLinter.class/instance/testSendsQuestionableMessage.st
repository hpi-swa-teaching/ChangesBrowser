testing-for-miscellaneous
testSendsQuestionableMessage

	self assertNoOccurrences: (self runLinterRule: #smallLintBadMessage)