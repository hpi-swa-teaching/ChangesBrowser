testing
testIsInImage

	self assert: (self methodChangeRecord isInImage not).
	self assert: (self classCommentChangeRecord isInImage not).
	self assert: (self firstClassCommentChangeRecord isInImage not).
	
	self assert: (self methodChangeRecordInImage isInImage).
	self assert: (self classCommentChangeRecordInImage isInImage)