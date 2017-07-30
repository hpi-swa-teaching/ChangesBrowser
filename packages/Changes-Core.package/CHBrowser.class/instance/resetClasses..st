buttonActions
resetClasses: aChangeList

	|listOfClasses|
	listOfClasses := aChangeList
	select: [:changeRecord | changeRecord string beginsWith: 'Object subclass:'].
	listOfClasses reversed do: [:changeRecord | changeRecord fileIn].