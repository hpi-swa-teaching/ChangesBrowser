assertions
assertCorrectClassCommentChangeListItemDescription

	self assert: (self classCommentChangeListItem description = 
						'(CRChangesDummyClass nil ug 21/6/2020 15:51)').
	
	self classCommentChangeListItem isPicked: true.
	self assert: (self classCommentChangeListItem description = 
						'CRChangesDummyClass nil ug 21/6/2020 15:51')