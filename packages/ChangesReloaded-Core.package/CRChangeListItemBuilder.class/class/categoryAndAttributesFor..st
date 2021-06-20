describing
categoryAndAttributesFor: aChangeListItem
	aChangeListItem type caseOf: {
		[#method] -> [^ self methodCategoryAndAttributesFor: aChangeListItem].
		[#classComment] -> [^ self classCommentCategoryAndAttributesFor: aChangeListItem].
		[#doIt] -> [^ self doItCategoryAndAttributesFor: aChangeListItem].
	}.
	"otherwise: [^ 'MISC should be removed ']"