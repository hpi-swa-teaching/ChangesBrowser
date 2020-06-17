enumerating
highestNumberedChangeSet
	
	| aList |
	aList := self allChangeSetNames 
		select: [:aString | aString startsWithDigit] 
		thenCollect: [:aString | aString initialIntegerOrNil].
	^ aList 
		ifNotEmpty: [aList max]
		ifEmpty: [nil]
