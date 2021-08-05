initialize-release
newGroup
	
	| newGroup |
	newGroup := CRChangeGroup new.
	self groups add: newGroup.
	^ newGroup