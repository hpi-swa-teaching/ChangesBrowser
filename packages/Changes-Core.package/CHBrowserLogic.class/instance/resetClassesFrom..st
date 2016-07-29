resetting
resetClassesFrom: aChangeList

	| setOfAddedClasses setOfRemovedClasses |
	setOfAddedClasses := self findAddedClassesRecordsIn: aChangeList.	
	setOfRemovedClasses := self findRemovedClassesRecordsIn: aChangeList.
	setOfAddedClasses
		do: [:aClass | Smalltalk removeClassNamed: aClass].
	self resetDeletedClasses: setOfRemovedClasses.
