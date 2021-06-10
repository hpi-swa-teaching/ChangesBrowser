assertions
assertCorrectClassCommentChangeListItemNameOfAffectedClass

	self assert: (self classCommentChangeListItem methodClassName = 'CRChangesDummyClass')