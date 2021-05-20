misc
priorSourceOrNil
	| aClass aSelector  changeRecords |
	(aClass := self selectedClassOrMetaClass) ifNil: [^ nil].
	(aSelector := self selectedMessageName) ifNil: [^ nil].
	changeRecords := aClass changeRecordsAt: aSelector.
	changeRecords isNil ifTrue: [^ nil].
	changeRecords isEmpty ifTrue: [^ nil].
	^ (changeRecords first) string