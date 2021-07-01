updating
clipGroupIndex
	
	self groupIndex > self changeGroups size
		ifTrue: [self groupIndex: self changeGroups size].
	self groupIndex < 0
		ifTrue: [self groupIndex: 0].