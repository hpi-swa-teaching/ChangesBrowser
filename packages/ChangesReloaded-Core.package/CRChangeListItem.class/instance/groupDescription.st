descriptions
groupDescription
	
	^ self category caseOf: {
		[#method] -> ['method: ', (self attributes at: #class), '>>', (self attributes at: #method)].
		[#classComment] -> ['classComment: ', (self attributes at: #class)]
	}
	otherwise: self description