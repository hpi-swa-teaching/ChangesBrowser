accessing
includedChangeListItems
	
	^ changeListItems select: [:each | each isIncluded]