descriptions
formatted: aString

	| text |
	text := aString asText.
	
	self isPicked 
		ifFalse: [self class unpickedAttributes do: [:attribute | text addAttribute: attribute]].
	
	^ text