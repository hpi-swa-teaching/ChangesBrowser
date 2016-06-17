private
readNextCharacter
	position < string size ifTrue: [^ string at: (position + 1)] ifFalse: [^ nil]