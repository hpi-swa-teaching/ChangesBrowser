utility
textWithAttributes: aText picked: aBool
	"because old squeak versions don't support Text>>addAllAttributes: we need to do this here"
	| textCopy |
	textCopy := aText copy.
	(aBool
		ifTrue: [self pickedAttributes] 
		ifFalse: [self unpickedAttributes])
			do: [:attribute | textCopy addAttribute: attribute].
	
	^ textCopy