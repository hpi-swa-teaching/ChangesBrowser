initialization
addModelItemsToWindowMenu: aMenu
	"Add model-related items to the given window menu"

	| oldTarget |
	oldTarget := aMenu defaultTarget.
	aMenu defaultTarget: self.
	aMenu addLine.
	aMenu add: 'rename change set' action: #rename.
	aMenu add: 'make changes go to me' action: #newCurrent.
	aMenu addLine.
	aMenu add: 'file out' action: #fileOut.
	aMenu add: 'browse methods' action: #browseChangeSet.
	aMenu addLine.
	myChangeSet hasPreamble
		ifTrue:
			[aMenu add: 'edit preamble' action: #addPreamble.
			aMenu add: 'remove preamble' action: #removePreamble]
		ifFalse:
			[aMenu add: 'add preamble' action: #addPreamble].

	myChangeSet hasPostscript
		ifTrue:
			[aMenu add: 'edit postscript...' action: #editPostscript.
			aMenu add: 'remove postscript' action: #removePostscript]
		ifFalse:
			[aMenu add: 'add postscript...' action: #editPostscript].
	aMenu addLine.
	
	aMenu add: 'destroy change set' action: #remove.
	aMenu addLine.
	Smalltalk isMorphic ifTrue:
		[aMenu addLine.
		aMenu add: 'what to show...' target: self action: #offerWhatToShowMenu].
	aMenu addLine.
	aMenu add: 'more...' action: #offerShiftedChangeSetMenu.
	aMenu defaultTarget: oldTarget.

	^ aMenu