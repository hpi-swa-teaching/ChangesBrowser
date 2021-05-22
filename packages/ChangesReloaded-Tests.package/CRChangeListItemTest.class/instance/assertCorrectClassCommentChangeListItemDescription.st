assertions
assertCorrectClassCommentChangeListItemDescription

	self assert: (self classCommentChangeListItem description = 
						'(classComment: CRChangesDummyClass nil ug 21/6/2020 15:51)').
	
	self classCommentChangeListItem pick.
	self assert: (self classCommentChangeListItem description = 
						'classComment: CRChangesDummyClass nil ug 21/6/2020 15:51')