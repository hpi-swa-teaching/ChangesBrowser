categories & attributes
stringToIntArray: aString

	^ ((aString findBetweenSubStrs: ' ') collect: [:each | each asInteger]) asArray