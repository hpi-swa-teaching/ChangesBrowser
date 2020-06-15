test-for-disharmonies
dontTestSignificantDuplication
	"wrong SL Type"

	self assertAllAreFalse: (self runLinterRule: #significantDuplication:)