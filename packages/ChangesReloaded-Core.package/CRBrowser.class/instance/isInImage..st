accessing
isInImage: aChangeRecord
	"Compares the source code of aChangeRecord to the code that is currently in the image."
	| class selector currentSource changeSource |
	
	class := aChangeRecord methodClass.
	selector := aChangeRecord methodSelector.
	(class notNil and: [class includesSelector: selector])
		ifFalse: [^ false].
	currentSource := (class sourceCodeAt: selector) asString.
	changeSource := aChangeRecord string.
	^ currentSource = changeSource