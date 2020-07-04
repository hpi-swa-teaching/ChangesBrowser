test-for-spelling
dontTestMethodProtocols
	"Has false alarms, for example for assertAllAreFalse:"

	self assertNoOccurrences: (self runLinterRule: #smallLintMethodProtocolsSpelling)