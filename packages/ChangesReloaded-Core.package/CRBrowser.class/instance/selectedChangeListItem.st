accessing
selectedChangeListItem
	
	^ self hasValidVersionIndex
		ifTrue: [self selectedGroup at: self versionIndex]
		ifFalse: [nil]