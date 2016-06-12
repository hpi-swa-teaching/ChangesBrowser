initialization
resetSelectedMethods

	Smalltalk snapshot: true andQuit: false.
	self refresh.

	1 to: self changeList changeList size
		do: [:index | (self changeList listSelections at: index)
				ifTrue: [((self changeList changeList) at: index) fileIn]].
			
	self refresh