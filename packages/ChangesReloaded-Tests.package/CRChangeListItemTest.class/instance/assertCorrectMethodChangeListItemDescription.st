assertions
assertCorrectMethodChangeListItemDescription

	self assert: (self methodChangeListItem description = 
						'CRChangesDummyClass functionOrder1 ug 21/6/2020 15:51').
	self assertCorrectUnpickedListItemDecriptionAttributes: self methodChangeListItem description.
	
	self methodChangeListItem pick.
	self assert: (self methodChangeListItem description = 
						'CRChangesDummyClass functionOrder1 ug 21/6/2020 15:51').
	self assertCorrectPickedListItemDecriptionAttributes: self methodChangeListItem description.