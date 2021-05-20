accessing
selectedClass
	self hasSelectedMethodChangeListItem
		ifTrue: [^ self selectedChangeListItem methodClass]
		ifFalse: [^ nil]