updating
clipGroupIndex

	self groupIndex > self groups size
		ifTrue: [self groupIndex: self groups size].
	self groupIndex < 0
		ifTrue: [self groupIndex: 0]