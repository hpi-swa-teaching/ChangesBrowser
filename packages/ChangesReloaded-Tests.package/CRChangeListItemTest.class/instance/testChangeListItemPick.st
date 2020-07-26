testing
testChangeListItemPick
	"Only use methodChangeListItem as example, since this is the same for all types of CRChangeListItems"

	self assert: (self methodChangeListItem isPicked not).
	
	self methodChangeListItem pick.
	self assert: (self methodChangeListItem isPicked)