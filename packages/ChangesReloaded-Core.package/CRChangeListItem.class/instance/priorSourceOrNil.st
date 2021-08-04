content
priorSourceOrNil

	^ self category caseOf: {
		[#method] -> [self methodPriorSource].
		[#classComment] -> [self classCommentPriorSource]
	} 
	otherwise: [nil]