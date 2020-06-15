test-for-disharmonies
dontTestDispersedCoupling
	"wrong SL Type"

	self assertAllAreFalse: (self runLinterRule: #dispersedCoupling:)