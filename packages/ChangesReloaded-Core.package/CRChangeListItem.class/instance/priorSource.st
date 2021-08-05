content
priorSource

	^ self category caseOf: {
		[#method] -> [self methodPriorSource].
		[#classComment] -> [self classCommentPriorSource]
	}