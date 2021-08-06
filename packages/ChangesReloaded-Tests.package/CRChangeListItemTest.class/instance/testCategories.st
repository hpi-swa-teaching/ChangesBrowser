testing
testCategories
	
	self 
		assert: self expectedCategories 
		equals: (self changeListItems collect: [:each | each category]).