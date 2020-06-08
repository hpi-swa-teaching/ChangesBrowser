testing-for-miscellaneous
testMethodJustSendsSuperMessage

	self assertNoOccurrences: (self runLinterRule: #smallLintJustSendsSuper)