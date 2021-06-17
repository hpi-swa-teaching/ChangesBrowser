instance creation
setCategoryAndDescriptionOf: aChangeListItem
	
	| categoryDescriptionTuple |	
	categoryDescriptionTuple := (self categoryAndDescriptionFor: aChangeListItem).
	aChangeListItem category: categoryDescriptionTuple first.
	aChangeListItem description: (aChangeListItem category, ': ', categoryDescriptionTuple second) asText.