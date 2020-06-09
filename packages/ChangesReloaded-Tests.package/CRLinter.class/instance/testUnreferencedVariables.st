test-for-miscellaneous
testUnreferencedVariables

	self assertAllAreFalse: (self runLinterRule: #unreferencedVariable:)