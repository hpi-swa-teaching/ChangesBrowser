test-for-disharmonies
dontTestBrainMethod
	"wrong SL Type"

	self assertAllAreFalse: (self runLinterRule: #brainMethod:)