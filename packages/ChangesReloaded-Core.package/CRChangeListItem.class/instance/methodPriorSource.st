misc
methodPriorSource

	| aSelector aClass changeRecords |
	
	aSelector := (self attributes at: #method).
	(aClass := Smalltalk classNamed: (self attributes at: #class))
		ifNil: [^ ''].
	(changeRecords := aClass changeRecordsAt: aSelector)
		ifNil: [^ ''];
		ifEmpty: [^ ''].
	^ changeRecords first string