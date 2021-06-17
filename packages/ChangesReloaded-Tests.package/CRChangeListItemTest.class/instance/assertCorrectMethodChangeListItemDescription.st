assertions
assertCorrectMethodChangeListItemDescription

	self assert: (self methodChangeListItem description = 
						'method: CRChangesDummyClass functionOrder1 ug 21/6/2020 15:51').
	
	self methodChangeListItem unpick.
	self assertCorrectUnpickedListItemDecriptionAttributes: self methodChangeListItem description.
	
	self methodChangeListItem pick.
	self assert: (self methodChangeListItem description = 
						'method: CRChangesDummyClass functionOrder1 ug 21/6/2020 15:51').
	self assertCorrectPickedListItemDecriptionAttributes: self methodChangeListItem description.