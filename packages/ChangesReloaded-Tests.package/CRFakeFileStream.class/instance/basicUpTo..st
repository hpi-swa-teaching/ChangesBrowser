accessing
basicUpTo: aDelimiter

	| returnString |
	returnString := ''.
	[(self position < self string size) and: (self peek ~~ aDelimiter)] whileTrue: [ returnString := returnString , self next].
	self position: self position + 1.
	^ returnString