testing-functionality
testCorrectSelectedIndicesOnInitialization
	
	self assert: (self changesBrowser groupIndex = 0 and: [self changesBrowser versionIndex = 0]).