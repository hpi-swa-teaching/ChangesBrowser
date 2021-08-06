content
classCommentPriorSource

	| aClass |
	(aClass := Smalltalk classNamed: (self attributes at: #class))
		ifNil: [^ nil].
	^ aClass comment asString