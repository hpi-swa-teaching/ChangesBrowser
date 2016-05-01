message list
messageList 
	| thisClass organization |
	(thisClass := self selectedClassOrMetaClass) ifNil: [^ #() ] .
	organization := thisClass organization.
	^self basicMessageList collect: [ :each |
		each asString , (self noteString: (organization categoryOfElement: each))].
