testing
testIsMethod

	self assert: (self methodChangeRecord isMethod).
	self assert: (self classCommentChangeRecord isMethod not)