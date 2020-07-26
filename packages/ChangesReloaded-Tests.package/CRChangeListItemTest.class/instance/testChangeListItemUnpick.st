testing
testChangeListItemUnpick
	"Only use methodChangeListItem as example, since this is the same for all types of CRChangeListItems"

	self methodChangeListItem isPicked: true.
	self assert: (self methodChangeListItem isPicked).
	
	self methodChangeListItem unpick.
	self assert: (self methodChangeListItem isPicked not)