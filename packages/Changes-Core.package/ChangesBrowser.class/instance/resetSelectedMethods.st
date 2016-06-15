resetting
resetSelectedMethods

	| savedListSelections |

	savedListSelections := self changeList listSelections.
	Smalltalk snapshot: true andQuit: false.
	self refresh.

	1 to: savedListSelections size
		do: [:index | (savedListSelections at: index)
				ifTrue: [((self changeList changeList) at: index) fileIn]].
			
	self refresh