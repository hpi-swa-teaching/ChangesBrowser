as yet unclassified
toggleShowMethodChanges 
	self filterMode remove: #method ifAbsent: [self filterMode add: #method]. 
	self applyFilter.

