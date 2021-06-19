accessing
selectedGroup

	self hasValidGroupIndex
		ifTrue: [^ self changeGroups at: self groupIndex]
		ifFalse: [^ nil]