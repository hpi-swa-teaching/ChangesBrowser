filtering
toggleShowClassCommentChanges
	|CHlogic|
	CHlogic := self dependents at: 1.
	CHlogic filterMode remove: #classComment ifAbsent: [CHlogic filterMode add: #classComment]. 
	CHlogic applyFilter.