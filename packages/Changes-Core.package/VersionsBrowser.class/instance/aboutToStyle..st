contents
aboutToStyle: aStyler

	"Style in source view, or when there's nothing to diff with."
	(self isModeStyleable or: [ listIndex = list size ]) ifFalse: [ ^false ].
	aStyler
		classOrMetaClass: classOfMethod;
		parseAMethod: true.
	^true
	