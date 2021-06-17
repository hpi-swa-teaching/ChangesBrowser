instance creation
newChangeListItemWith: aChangeRecord

	| changeListItem |
	
	changeListItem := CRChangeListItem new changeRecord: aChangeRecord.
	self setCategoryAndDescriptionOf: changeListItem.
	
	^ changeListItem 
			pick; 
			yourself
	
	
	