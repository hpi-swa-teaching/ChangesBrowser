*ChangesReloaded-Core
executeSilently
	| undos undo |
	undos := changes collect: [ :each | each class = RBAddMethodChange 
			ifTrue: [each executeSilently]
			ifFalse: [each execute]].
	undo := self copy.
	undo changes: undos reversed.
	^ undo