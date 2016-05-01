changeSet menu
changeSetMenuForOpposite: aMenu

	parent ifNotNil:
		[aMenu add: 'conflicts with change set opposite' action: #methodConflictsWithOtherSide.
			aMenu balloonTextForLastItem: 
'Browse all methods that occur both in this change set and in the one on the opposite side of the change sorter.'.].
	^ aMenu