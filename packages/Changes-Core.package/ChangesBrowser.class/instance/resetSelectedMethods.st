initialization
resetSelectedMethods

	1 to: self changeList changeList size
		do: [:index | (self changeList listSelections at: index)
				ifTrue: [((self changeList changeList) at: index) fileIn]]