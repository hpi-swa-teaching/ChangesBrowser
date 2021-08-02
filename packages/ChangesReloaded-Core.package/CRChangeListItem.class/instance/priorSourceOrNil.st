content
priorSourceOrNil
	"like CodeHolder>>priorSourceOrNil but directly at ChangeListItem"
	^ self category caseOf: {
		[#method] -> [self methodPriorSource].
		[#classComment] -> [self classCommentPriorSource]
	} 
	otherwise: [nil]