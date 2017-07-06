as yet unclassified
saveSnapshot

	self testMode
		ifFalse: 	[Smalltalk snapshot: true andQuit: false.
				self refresh].