filtering
toggleShowClassCommentChanges
	self filterMode remove: #classComment ifAbsent: [self filterMode add: #classComment]. 
	self applyFilter.