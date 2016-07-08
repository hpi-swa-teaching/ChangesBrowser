*Changes-Core
containsString: aString
	| classString categoryString |
	classString := self methodClassName ifNil: [''] ifNotNil: [self methodClassName asString].
	categoryString := self category ifNil: [''] ifNotNil: [self category].
	^(classString includesSubstring: aString) 
		or: [(categoryString includesSubstring: aString) 
			or: [self string includesSubstring: aString]]