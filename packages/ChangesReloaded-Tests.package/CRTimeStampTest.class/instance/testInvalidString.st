testing
testInvalidString

	self
		assert: ((TimeStamp fromAuthorStamp: 'class author date time') isNil);
		assert: ((TimeStamp fromAuthorStamp: 'date') isNil);
		assert: ((TimeStamp fromAuthorStamp: '') isNil)