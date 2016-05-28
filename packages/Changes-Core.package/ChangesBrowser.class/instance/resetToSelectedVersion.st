as yet unclassified
resetToSelectedVersion

	| changeList listOfChangeRecords listOfMethodsAndClasses selectedTimeStamp |
	
	"Select all ChangeRecords, which were created after this version"
	changeList := self versionListModel getChangeListForSelectedVersion.
	"Just select the method entries, because they are the ony thing, which we can undo."
	listOfChangeRecords := changeList changeList
				select: [:changeRecord | changeRecord type == #method].

	"The SNAPSHOT and QUIT records don't have a timeStamp -> so search for the first timeStamp within this list"
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