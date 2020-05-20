accessing
changeListToDisplay

	^ ((changeList changeList 
		reject: [:each | self isInImage: each])
		collect: [:each | each text])
		reversed