private
readNextCharacter
	self position < self string size ifTrue: [^ self string at: (self position + 1)] ifFalse: [^ nil]