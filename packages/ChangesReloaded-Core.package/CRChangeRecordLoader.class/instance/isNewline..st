file-utils
isNewline: aCharacter

	^ aCharacter = Character cr or: [aCharacter = Character lf]