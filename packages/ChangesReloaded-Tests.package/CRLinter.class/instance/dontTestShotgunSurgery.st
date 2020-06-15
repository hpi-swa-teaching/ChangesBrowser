test-for-disharmonies
dontTestShotgunSurgery
	"wrong SL Type"

	self assertAllAreFalse: (self runLinterRule: #shotgunSurgery:)