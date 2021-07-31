testing-functionality
testContents
	
	self
		assert: ''
		equals: self changesBrowser contents.
		
	self selectFirstChangeListItem.
	self
		assert: self changesBrowser selectedChangeListItem content
		equals: self changesBrowser contents.
		
	self changesBrowser versionIndex: 0.
	self
		assert: ''
		equals: self changesBrowser contents.