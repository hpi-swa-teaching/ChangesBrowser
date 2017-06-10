filtering
toggleShowDoItChanges 
	self filterMode remove: #doIt ifAbsent: [self filterMode add: #doIt]. 
	self applyFilter.