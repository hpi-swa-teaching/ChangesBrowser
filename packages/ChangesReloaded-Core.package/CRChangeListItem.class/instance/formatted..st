descriptions
formatted: aString

	^ self isPicked
		ifTrue: [aString asText]
		ifFalse: [aString asText addAllAttributes: self class unpickedAttributes]