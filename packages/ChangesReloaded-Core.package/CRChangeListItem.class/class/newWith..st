instance-creation
newWith: aChangeRecord
	
	| changeListItem |
	
	changeListItem := self new changeRecord: aChangeRecord.
	self setCategoryAndAttributesOf: changeListItem.
	
	^ changeListItem