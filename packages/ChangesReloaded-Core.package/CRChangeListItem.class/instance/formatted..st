descriptions
formatted: aString

	| text |
	text := aString asText.
	
	self isPicked 
		ifFalse: [self unpickedAttributes do: [:attribute | text addAttribute: attribute]].
	
	^ text