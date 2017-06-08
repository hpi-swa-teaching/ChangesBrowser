filtering
toggleShowMethodChanges 
	
	|CHlogic|
	CHlogic := self dependents at: 1.
	CHlogic filterMode remove: #method ifAbsent: [CHlogic filterMode add: #method]. 
	CHlogic applyFilter.

