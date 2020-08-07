accessing
pickedChangeListItems
	
	^ self changeListItems select: [:each | each isPicked]