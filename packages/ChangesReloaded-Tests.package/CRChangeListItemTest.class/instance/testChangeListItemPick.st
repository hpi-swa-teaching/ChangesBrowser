testing
testChangeListItemPick
	"Only use methodChangeListItem as example, since this is the same for all types of CRChangeListItems"

	
	self assert: (self methodChangeListItem isPicked).
	
	self methodChangeListItem unpick.	
	self assert: (self methodChangeListItem isPicked not).