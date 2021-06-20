instance creation
newChangeListItemWith: aChangeRecord

	| changeListItem |
	
	changeListItem := CRChangeListItem new changeRecord: aChangeRecord.
	self setCategoryAndAttributesOf: changeListItem.
	
	^ changeListItem 
			pick; 
			yourself
	
	
	