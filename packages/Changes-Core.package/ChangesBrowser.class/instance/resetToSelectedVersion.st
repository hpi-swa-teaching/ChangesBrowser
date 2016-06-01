as yet unclassified
resetToSelectedVersion

	| changeList listOfChangeRecords selectedTimeStamp |
	
	"Select all ChangeRecords, which were created after this version"
	changeList := self versionListModel getChangeListForSelectedVersion.
	
	listOfChangeRecords := changeList changeList
				select: [:changeRecord | changeRecord type == #method].

	"The SNAPSHOT and QUIT records don't have a timeStamp -> so search for the first timeStamp within this list"
	selectedTimeStamp := listOfChangeRecords first timeStamp.

	self
		resetClassesFrom: changeList toTime: selectedTimeStamp;
		resetMethodsFrom: changeList toTime: selectedTimeStamp.