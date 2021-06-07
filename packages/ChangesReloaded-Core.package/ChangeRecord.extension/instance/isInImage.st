*ChangesReloaded-Core
isInImage
	
	self type = #method
		ifTrue: [| class selector compiledMethod versions |
			class := self methodClass.
			selector := self methodSelector.
			class ifNil: [^ false].
			compiledMethod := class lookupSelector: selector.
			compiledMethod ifNil: [^ true].
			versions := class changeRecordsAt: selector.
			^ versions includes: self].
	
	self type = #classComment
		ifTrue: [| class |	
			class := self methodClass.
			class ifNil: [^ false].
			class organization commentStamp ifNil: [^ false].
			^ (TimeStamp fromAuthorStamp: class organization commentStamp) >= self timeStamp].
		
	"TODO: doIt"