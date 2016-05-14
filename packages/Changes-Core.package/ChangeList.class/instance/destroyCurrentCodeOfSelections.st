menu actions
destroyCurrentCodeOfSelections
	"Actually remove from the system any in-memory methods with class and selector identical to items current selected.  This may seem rather arcane but believe me it has its great uses, when trying to split out code.  To use effectively, first file out a change set that you wish to split off.  Then open a ChangeList browser on that fileout.  Now look through the methods, and select any of them which you want to remove completely from the system, then issue this command.  For those methods where you have made changes to pre-existing versions, of course, you won't want to remove them from the system, so use this mechanism with care!"

	|  aClass aChange aList |
	aList := OrderedCollection new.
	1 to: self changeList size do:
		[:index |
			(self listSelections at: index) ifTrue:
				[aChange := self changeList at: index.
				(aChange type = #method
					and: [(aClass := aChange methodClass) notNil
					and: [aClass includesSelector: aChange methodSelector]])
						ifTrue:
							[aList add: {aClass. aChange methodSelector}]]].

	aList size > 0 ifTrue:
		[(self confirm: 'Warning! This will actually remove ', aList size printString,  ' method(s) from the system!') ifFalse: [^ self]].
	aList do:
		[:aPair | Transcript cr; show: 'Removed: ', aPair first printString, '.', aPair second.
			aPair first removeSelector: aPair second]