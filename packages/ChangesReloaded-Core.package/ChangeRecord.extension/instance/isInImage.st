*ChangesReloaded-Core
isInImage
	
	self type = #method
		ifTrue: [| class selector compiledMethod |
			class := self methodClass.
			selector := self methodSelector.
			class ifNil: [^ false].
			compiledMethod := class lookupSelector: selector.
			compiledMethod ifNil: [^ false].
			^ (TimeStamp fromAuthorStamp: compiledMethod timeStamp) >= self timeStamp].
		
	self type = #classComment
		ifTrue: [| class |	
			class := self methodClass.
			class ifNil: [^ false].
			class organization commentStamp ifNil: [^ false].
			^ (TimeStamp fromAuthorStamp: class organization commentStamp) >= self timeStamp].
	
	"FIXME"
	^ (self type = #doIt) not