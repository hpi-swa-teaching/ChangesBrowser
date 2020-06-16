test-for-miscellaneous
dontTestSendsQuestionableMessage
	"We use isKindOf: in a test."

	self assertNoOccurrences: (self runLinterRule: #smallLintBadMessage)