utility
textWithAttributes: aText picked: aBool
	"because old squeak versions don't support Text>>addAllAttributes: we need to do this here"
	(aBool
		ifTrue: [self pickedAttributes] 
		ifFalse: [self unpickedAttributes])
			do: [:attribute | aText addAttribute: attribute].
	
	^ aText