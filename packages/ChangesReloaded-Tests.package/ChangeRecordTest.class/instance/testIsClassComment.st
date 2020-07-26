testing
testIsClassComment

	self assert: (self methodChangeRecord isClassComment not).
	self assert: (self classCommentChangeRecord isClassComment)