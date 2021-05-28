accessing
selectedMessageName

	self hasSelectedMethodChangeListItem
		ifTrue: [^ self selectedChangeListItem methodSelector]
		ifFalse: [^ nil]