accessing
isInImage: aChangeRecord 
	"Compares the source code of aChangeRecord to the
	code that is currently in the image."
	
	| class selector currentSource changeSource |
	
	class := aChangeRecord methodClass.
	selector := aChangeRecord methodSelector.
	
	"Everything that does not modify a class or handles a method selector that is not in the respective class at the moment cannot be compared to actual code within the image. To be sure to catch all unmade changes, we defined these unverifiable changes as 'not in image'."
	((CRChangeList modifiesClass: aChangeRecord)
			and: [class includesSelector: selector])
		ifFalse: [^ false].
		
	currentSource := (class sourceCodeAt: selector) asString.
	changeSource := aChangeRecord string.
	^ currentSource = changeSource