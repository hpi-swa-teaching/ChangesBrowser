accessing
isInImage: aChangeRecord
	"Compares the source code of aChangeRecord to the code that is currently in the image."
	| class currentSource changeSource |
	
	class := aChangeRecord methodClass.
	(class notNil and: [class includesSelector: aChangeRecord methodSelector])
		ifFalse: [^ false].
	currentSource := (class sourceCodeAt: aChangeRecord methodSelector) asString.
	changeSource := aChangeRecord string.
	^ currentSource = changeSource