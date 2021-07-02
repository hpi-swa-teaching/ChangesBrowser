accessing
groupID
	
	"should return identifier of group if shouldBeGrouped returns true."
	^ self category caseOf: {
		[#method] -> [{#method. self attributes at: #class. self attributes at: #method}].
		[#classComment] -> [{#classComment. self attributes at: #class}]
	}