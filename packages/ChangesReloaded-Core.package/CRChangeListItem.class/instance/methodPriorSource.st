content
methodPriorSource
	"copied from CodeHolder>>priorSource"
	| aSelector aClass changeRecords |
	
	aSelector := (self attributes at: #method).
	(aClass := Smalltalk classNamed: (self attributes at: #class))
		ifNil: [^ nil].
	(changeRecords := aClass changeRecordsAt: aSelector)
		ifNil: [^ nil];
		ifEmpty: [^ nil].
	^ changeRecords first string