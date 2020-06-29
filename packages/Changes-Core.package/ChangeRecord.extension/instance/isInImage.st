*Changes-Core
isInImage
	
	self type = #method
		ifTrue: [| class selector |	
			class := self methodClass.
			selector := self methodSelector.
			class ifNil: [^ false].
			(class lookupSelector: selector) ifNil: [^ false].
			"TODO: Move this method to TimeStamp (TimeStamp >> fromStamp: ) --> strips away author initials from actual timestamp"
			^ (TimeStamp fromAuthorStamp: (class lookupSelector: selector) timeStamp) >= self timeStamp].
		
	self type = #classComment
		ifTrue: [| class |	
			class := self methodClass.
			class ifNil: [^ false].
			^ (TimeStamp fromAuthorStamp: class organization commentStamp) >= self timeStamp].
		
	"TODO: doIt"