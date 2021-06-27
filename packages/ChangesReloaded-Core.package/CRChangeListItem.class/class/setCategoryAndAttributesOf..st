categories & attributes
setCategoryAndAttributesOf: aChangeListItem
	
	| categoryAttributesTuple |	
	categoryAttributesTuple := (self categoryAndAttributesFor: aChangeListItem).
	aChangeListItem category: categoryAttributesTuple first.
	aChangeListItem attributes: categoryAttributesTuple second