assertions
assertCorrectClassCommentChangeListItemDescription

	self assert: (self classCommentChangeListItem description = 
						'CRChangesDummyClass nil ug 21/6/2020 15:51').
	self assertCorrectUnpickedListItemDecriptionAttributes: self classCommentChangeListItem description.
	
	self classCommentChangeListItem pick.
	self assert: (self classCommentChangeListItem description = 
						'CRChangesDummyClass nil ug 21/6/2020 15:51').
	self assertCorrectPickedListItemDecriptionAttributes: self classCommentChangeListItem description.