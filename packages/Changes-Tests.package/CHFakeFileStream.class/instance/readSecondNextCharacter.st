private
readSecondNextCharacter 
	(self position < (self string size - 1)) ifTrue: [^ self string at: (self position + 2)] ifFalse: [^ nil]