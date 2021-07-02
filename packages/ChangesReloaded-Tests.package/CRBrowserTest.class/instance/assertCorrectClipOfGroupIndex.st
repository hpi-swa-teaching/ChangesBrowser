assertions
assertCorrectClipOfGroupIndex

	self changesBrowser groupIndex: -1.
	self changesBrowser clipGroupIndex.
	self assert: self changesBrowser groupIndex = 0.
	
	self changesBrowser groupIndex: 1.
	self changesBrowser clipGroupIndex.
	self assert: self changesBrowser groupIndex = 1.
	
	self changesBrowser groupIndex: self changesBrowser changeGroups size + 1.
	self changesBrowser clipGroupIndex.
	self assert: self changesBrowser groupIndex = self changesBrowser changeGroups size.