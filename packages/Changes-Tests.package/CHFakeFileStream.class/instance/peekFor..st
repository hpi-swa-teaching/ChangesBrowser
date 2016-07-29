overwriting
peekFor: item 
	"Answer false and do not advance if the next element is not equal to item, or if this stream is at the end.  If the next element is equal to item, then advance over it and return true"

	"self atEnd ifTrue: [^ false]. -- SFStream will give nil"
	(self next ifNil: [ ^false ]) = item ifTrue: [ ^true ].
	self position: self position - 1.
	^ false