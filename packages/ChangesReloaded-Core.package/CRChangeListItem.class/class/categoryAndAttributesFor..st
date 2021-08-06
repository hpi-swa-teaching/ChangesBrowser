categories & attributes
categoryAndAttributesFor: aCRChangeListItem
	
	aCRChangeListItem type caseOf: {
		[#method] -> [^ self methodCategoryAndAttributesFor: aCRChangeListItem].
		[#classComment] -> [^ self classCommentCategoryAndAttributesFor: aCRChangeListItem].
		[#doIt] -> [^ self doItCategoryAndAttributesFor: aCRChangeListItem].
	}.