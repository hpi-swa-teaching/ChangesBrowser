*Changes-Core
containsString: aString
	^(self methodClassName asString includesSubstring: aString) 
		or: [(self category includesSubstring: aString) 
			or: [self string includesSubstring: aString]]