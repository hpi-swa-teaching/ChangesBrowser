accessing
pickedStatus

	^ self changeListItems collect: [:each | each isPicked]