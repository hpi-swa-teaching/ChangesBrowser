changeSet menu
unshiftedChangeSetMenu: aMenu
	"Set up aMenu to hold commands for the change-set-list pane.  This could be for a single or double changeSorter"
	<changeSetMenuShifted: false>
	Smalltalk isMorphic
		ifTrue:
			[aMenu title: 'Change Set']
		ifFalse:
			[aMenu title: 'Change Set:
' , myChangeSet name].
	aMenu addStayUpItemSpecial.

	aMenu add: 'make changes go to me (m)' action: #newCurrent.
	aMenu addLine.
	aMenu add: 'new change set... (n)' action: #newSet.
	aMenu add: 'find...(f)' action: #findCngSet.
	aMenu add: 'select change set...' action: #chooseCngSet.
	aMenu addLine.
	aMenu add: 'rename change set (r)' action: #rename.
	aMenu add: 'file out (o)' action: #fileOut.
	aMenu add: 'mail to list' action: #mailOut.
	aMenu add: 'browse methods (b)' action: #browseChangeSet.
	aMenu add: 'browse change set (B)' action: #openChangeSetBrowser.
	aMenu addLine.
	parent
		ifNotNil: 
			[aMenu add: 'copy all to other side (c)' action: #copyAllToOther.
			aMenu add: 'submerge into other side' action: #submergeIntoOtherSide.
			aMenu add: 'subtract other side (-)' action: #subtractOtherSide.
			aMenu addLine].
	myChangeSet hasPreamble
		ifTrue: 
			[aMenu add: 'edit preamble (p)' action: #addPreamble.
			aMenu add: 'remove preamble' action: #removePreamble]
		ifFalse: [aMenu add: 'add preamble (p)' action: #addPreamble].
	myChangeSet hasPostscript
		ifTrue: 
			[aMenu add: 'edit postscript...' action: #editPostscript.
			aMenu add: 'remove postscript' action: #removePostscript]
		ifFalse: [aMenu add: 'add postscript...' action: #editPostscript].
	aMenu addLine.

	aMenu add: 'destroy change set (x)' action: #remove.
	aMenu addLine.
	aMenu add: 'more...' action: #offerShiftedChangeSetMenu.
	^ aMenu