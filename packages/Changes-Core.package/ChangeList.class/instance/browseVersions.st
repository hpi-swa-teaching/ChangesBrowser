menu actions
browseVersions
	| change class browser |
	listIndex = 0
		ifTrue: [^ nil ].
	change := changeList at: listIndex.
	((class := change methodClass) notNil
			and: [class includesSelector: change methodSelector])
		ifFalse: [ ^nil ].
	browser := super browseVersions.
	browser ifNotNil: [ browser addedChangeRecord: change ].
	^browser