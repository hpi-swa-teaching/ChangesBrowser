testing
testValidString

	self
		assert: ((TimeStamp fromAuthorStamp: 'mg 7/15/2020 20:14') =
			(TimeStamp fromString: '15-7-2020 8:14:00 pm'));
		assert: ((TimeStamp fromAuthorStamp: '7/15/2020 20:14') =
			(TimeStamp fromString: '15-7-2020 8:14:00 pm'))