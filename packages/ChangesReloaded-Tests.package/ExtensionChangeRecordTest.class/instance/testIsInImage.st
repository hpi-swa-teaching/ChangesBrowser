testing
testIsInImage
	
	"deprecated due to new approach for getting missing changeRecords from changes file"

	"self assert: (self methodChangeRecord isInImage not).
	self assert: (self classCommentChangeRecord isInImage not).
	self assert: (self firstClassCommentChangeRecord isInImage not).
	
	self assert: (self methodChangeRecordInImage isInImage).
	self assert: (self classCommentChangeRecordInImage isInImage)"