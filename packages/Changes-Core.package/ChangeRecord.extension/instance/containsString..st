*Changes-Core
containsString: aString
	| classString categoryString |
	classString := self methodClassName ifNil: [''].
	categoryString := self category ifNil: [''].
	^(classString includesSubstring: aString) 
		or: [(categoryString includesSubstring: aString) 
			or: [self string includesSubstring: aString]]