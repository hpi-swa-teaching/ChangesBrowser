overwriting
upTo: delimiter
	| returnString |
	returnString := ''.
	[(position < string size) and: (self peek ~~ delimiter)] whileTrue: [ returnString := returnString , self next].
	position := position + 1.
	^ returnString