as yet unclassified
resetExistingMethods: aChangeList

	| listOfMethodsAndClasses listOfMethodRecords |

	listOfMethodRecords := aChangeList changeList
				select: [:changeRecord | changeRecord type == #method].
	listOfMethodsAndClasses := Set new.
	listOfMethodRecords
		do: [:changeRecord | changeRecord methodClass = nil " nil means, that this methods comes from a class, which was created after the timeStamp"
				ifFalse: [listOfMethodsAndClasses add: {changeRecord methodSelector. changeRecord methodClass . changeRecord timeStamp}]].
	listOfMethodsAndClasses
		do: [:methodAndClass |
			self
				resetMethod: methodAndClass first
				ofClass: methodAndClass second
				toTime: methodAndClass third].