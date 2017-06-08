filtering
toggleShowDoItChanges 
	|CHlogic|
	CHlogic := self dependents at: 1.
	CHlogic filterMode remove: #doIt ifAbsent: [CHlogic filterMode add: #doIt]. 
	CHlogic applyFilter.