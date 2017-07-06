as yet unclassified
resetSelectedMethods

	| savedListSelections |
	savedListSelections := self changeList listSelections.
	self saveSnapshot.
	1 to: savedListSelections size
		do: [:index |	(savedListSelections at: index)
				ifTrue: [(self changeList changeList at: index) fileIn]].
	self refresh