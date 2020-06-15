test-for-disharmonies
dontTestFeatureEnvy
	"wrong SL Type"

	self assertAllAreFalse: (self runLinterRule: #featureEnvy:)