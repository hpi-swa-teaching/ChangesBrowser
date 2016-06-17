overwriting
nextChunkText
	| returnString |
	self skipSeparators.
	returnString := ''.
	[(position == (string size - 1) and: self readNextCharacter ~~ $!)
		or: (position < (string size - 1)
				and: (self readNextCharacter ~~ $!
						or: (self readNextCharacter == $! and: self readSecondNextCharacter == $!)))]
		whileTrue: [self readNextCharacter ~~ $!
				ifTrue: [returnString := returnString , self next.]
				ifFalse: [returnString := returnString , self next.
					position := position + 1.]].
	^ Text fromString: returnString