menu actions
browseVersions
	| change class browser |
	self listIndex = 0
		ifTrue: [^ nil ].
	change := self changeList at: self listIndex.
	((class := change methodClass) notNil
			and: [class includesSelector: change methodSelector])
		ifFalse: [ ^nil ].
	browser := super browseVersions.
	browser ifNotNil: [ browser addedChangeRecord: change ].
	^browser