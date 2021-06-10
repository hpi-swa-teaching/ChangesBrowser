assertions
assertCorrectMethodChangeListItemNameOfAffectedClass

	self assert: (self methodChangeListItem methodClassName = 'CRChangesDummyClass')