overwriting
nextChunk
	| returnString |
	self skipSeparators.
	returnString := ''.
	[(self position = (self string size - 1) and: [self readNextCharacter ~~ $!])
		or: [self position < (self string size - 1)
				and: [self readNextCharacter ~~ $!
						or: [self readNextCharacter == $! and: [self readSecondNextCharacter == $!]]]]]
		whileTrue: [self readNextCharacter ~~ $!
				ifTrue: [returnString := returnString , self next.]
				ifFalse: [returnString := returnString , self next.
					self position: self position + 1.]].
	self next.
	^ returnString