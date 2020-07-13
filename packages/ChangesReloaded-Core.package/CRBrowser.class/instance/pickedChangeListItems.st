accessing
pickedChangeListItems
	
	^ changeListItems select: [:each | each isIncluded]