testing-functionality
testIndicesAfterInitialization
	
	self
		assert: 0 equals: self changesBrowser groupIndex;
		assert: 0 equals: self changesBrowser versionIndex.
	