test-for-coding-styles
dontTestNamespaceSimulation
	"wrong SL Type"

	self assertNoOccurrences: (self runLinterRule: #namespaceSimulation:)