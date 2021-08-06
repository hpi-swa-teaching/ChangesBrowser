testing
testAttributes
	
	self 
		assert: self expectedAttributes 
		equals: (self changeListItems collect: [:each | each attributes]).