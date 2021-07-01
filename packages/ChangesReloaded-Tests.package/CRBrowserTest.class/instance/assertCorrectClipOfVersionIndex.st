accessing
assertCorrectClipOfVersionIndex

	self changesBrowser groupIndex: 1.

	self changesBrowser versionIndex: -1.
	self changesBrowser clipVersionIndex.
	self assert: self changesBrowser versionIndex = 0.
	
	self changesBrowser versionIndex: 1.
	self changesBrowser clipVersionIndex.
	self assert: self changesBrowser versionIndex = 1.
	
	self changesBrowser versionIndex: self changesBrowser selectedGroup size + 1.
	self changesBrowser clipVersionIndex.
	self assert: self changesBrowser versionIndex = self changesBrowser selectedGroup size.