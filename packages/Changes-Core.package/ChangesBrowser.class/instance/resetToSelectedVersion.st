as yet unclassified
resetToSelectedVersion

	| changeList listOfChangeRecords listOfMethodsAndClasses selectedTimeStamp |

	changeList := self versionListModel getChangeListForSelectedVersion.
	listOfChangeRecords := changeList changeList
				select: [:changeRecord | changeRecord type == #method].
	selectedTimeStamp := listOfChangeRecords first timeStamp.
	listOfMethodsAndClasses := Set new.
	listOfChangeRecords 
		do: [:changeRecord | listOfMethodsAndClasses add: {changeRecord methodSelector. changeRecord methodClass}].
	listOfMethodsAndClasses
		do: [:methodAndClass |
			(self
				getLastVersionOf: methodAndClass first
				class: methodAndClass second
				before: selectedTimeStamp) fileIn]