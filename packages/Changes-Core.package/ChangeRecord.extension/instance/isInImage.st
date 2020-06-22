*Changes-Core
isInImage
	
	self type = #method
		ifTrue: [| class selector |	
			class := self methodClass.
			selector := self methodSelector.
			class ifNil: [^ false].
			(class lookupSelector: selector) ifNil: [^ false].
			"TODO: Move this method to TimeStamp (TimeStamp >> fromStamp: ) --> strips away author initials from actual timestamp"
			^ ((class lookupSelector: selector) timeStamp allButFirst: 3) asTimeStamp >= self timeStamp].
		
	self type = #classComment
		ifTrue: [| class |	
			class := self methodClass.
			class ifNil: [^ false].
			^ (class organization commentStamp allButFirst: 3) asTimeStamp >= self timeStamp].
		
	"TODO: doIt"