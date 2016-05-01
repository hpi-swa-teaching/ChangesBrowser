enumerating
highestNumberedChangeSet
	"ChangeSorter highestNumberedChangeSet"
	| aList |
	aList := (ChangeSet allChangeSetNames select: [:aString | aString startsWithDigit] thenCollect:
		[:aString | aString initialIntegerOrNil]).
	^ (aList size > 0)
		ifTrue:
			[aList max]
		ifFalse:
			[nil]
