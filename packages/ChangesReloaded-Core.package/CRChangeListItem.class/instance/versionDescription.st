descriptions
versionDescription
	
	| description |
	description := self category caseOf: {
		[#method] -> [self attributes at: #stamp].
		[#classComment] -> [self attributes at: #stamp]
	}
	otherwise: self description.
		
	^ description asText addAllAttributes: self textAttributes