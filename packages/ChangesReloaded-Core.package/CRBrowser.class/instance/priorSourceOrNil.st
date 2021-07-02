misc
priorSourceOrNil
	| aClass aSelector changeRecords |
	(aClass := self selectedClass) ifNil: [^ nil].
	(aSelector := self selectedMessageName) ifNil: [^ nil].
	changeRecords := aClass changeRecordsAt: aSelector.
	changeRecords ifNil: [^ nil].
	changeRecords ifEmpty: [^ nil].
	^ changeRecords first string