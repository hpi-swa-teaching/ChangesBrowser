instance-creation
setCategoryAndAttributesOf: aCRChangeListItem
	
	| categoryAttributesTuple |	
	categoryAttributesTuple := (self categoryAndAttributesFor: aCRChangeListItem).
	aCRChangeListItem category: categoryAttributesTuple first.
	aCRChangeListItem attributes: categoryAttributesTuple second.