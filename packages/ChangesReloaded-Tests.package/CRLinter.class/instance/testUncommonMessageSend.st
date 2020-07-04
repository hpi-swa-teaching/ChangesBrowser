test-for-possible-bugs
testUncommonMessageSend

	self assertNoOccurrences: (self runLinterRule: #smallLintUncommonMessageSend)