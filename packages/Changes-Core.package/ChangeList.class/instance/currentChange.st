accessing
currentChange
	"return the current change being viewed, or nil if none"
	self listIndex = 0 ifTrue: [ ^nil ].
	^self changeList at: self listIndex