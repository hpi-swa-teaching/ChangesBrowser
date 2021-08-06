accessing
selectedGroup

	^ self hasValidGroupIndex
		ifTrue: [self groups at: self groupIndex]
		ifFalse: [nil]