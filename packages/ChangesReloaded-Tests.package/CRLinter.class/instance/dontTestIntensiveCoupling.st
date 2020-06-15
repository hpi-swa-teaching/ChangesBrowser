test-for-disharmonies
dontTestIntensiveCoupling
	"wrong SL Type"

	self assertAllAreFalse: (self runLinterRule: #intensiveCoupling:)