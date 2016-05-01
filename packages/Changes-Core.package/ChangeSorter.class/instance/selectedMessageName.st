message list
selectedMessageName

	currentSelector ifNil: [^ nil].
	^ (self withoutItemAnnotation: currentSelector) asSymbol