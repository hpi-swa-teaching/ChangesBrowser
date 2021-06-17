describing
categoryAndDescriptionFor: aChangeListItem
	aChangeListItem type caseOf: {
		[#method] -> [^ {#method. self methodDescriptionFor: aChangeListItem}].
		[#classComment] -> [^ {#classComment. self classCommentDescriptionFor: aChangeListItem}].
		[#doIt] -> [^ self doItCategoryAndDescriptionFor: aChangeListItem].
	}
	"otherwise: [^ 'MISC should be removed ']"