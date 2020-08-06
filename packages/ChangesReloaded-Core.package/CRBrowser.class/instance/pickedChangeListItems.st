accessing
pickedChangeListItems

	^ changeListItems select: [:each | each isPicked]