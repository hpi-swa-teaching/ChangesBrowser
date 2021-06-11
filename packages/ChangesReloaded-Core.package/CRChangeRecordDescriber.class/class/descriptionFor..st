main
descriptionFor: aChangeListItem
	aChangeListItem type caseOf: {
		[#method] -> [^ self methodDescriptionFor: aChangeListItem].
		[#classComment] -> [^ self classCommentDescriptionFor: aChangeListItem].
		[#doIt] -> [^ self doItDescriptionFor: aChangeListItem].
	}
	"otherwise: [^ 'MISC should be removed ']"