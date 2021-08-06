content
displayText

	^ self shouldBeDiffed
		ifFalse: [self string asText.]
		ifTrue: [self diffText.]
	