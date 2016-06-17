private
readSecondNextCharacter 
	(position < (string size - 1)) ifTrue: [^ string at: (position + 2)] ifFalse: [^ nil]