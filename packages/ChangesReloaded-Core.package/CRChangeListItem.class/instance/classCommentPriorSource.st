misc
classCommentPriorSource

	| aClass |
	(aClass := Smalltalk classNamed: (self attributes at: #class))
		ifNil: [^''].
	^ aClass comment asString