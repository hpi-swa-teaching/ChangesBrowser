assertions
assertCorrectClassCommentChangeListItemDescription

	self assert: (self classCommentChangeListItem description = 
						'classComment: CRChangesDummyClass ug 21/6/2020 15:51').
						
	self classCommentChangeListItem unpick.						
	self assertCorrectUnpickedListItemDecriptionAttributes: self classCommentChangeListItem versionDescription.
	
	self classCommentChangeListItem pick.
	self assert: (self classCommentChangeListItem description = 
						'classComment: CRChangesDummyClass ug 21/6/2020 15:51').
	self assertCorrectPickedListItemDecriptionAttributes: self classCommentChangeListItem versionDescription
	
	