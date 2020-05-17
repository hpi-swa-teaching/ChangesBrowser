filtering
toggleShowMethodChanges 

	self filterMode remove: #method ifAbsent: [self filterMode add: #method]. 
	self applyFilter.

