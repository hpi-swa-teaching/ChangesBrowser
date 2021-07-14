testing-functionality
testPriorSourceOrNil
	
	self selectFirstChangeListItem.
	self
		assert: self changesBrowser priorSourceOrNil 
		equals: self firstMethodCodeInImage.
		
	self selectSecondChangeListItem.
	self
		assert: self changesBrowser priorSourceOrNil 
		equals: self firstClassCommentCodeInImage.