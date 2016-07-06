button actions
resetToSelectedVersion

"	| changeList selectedTimeStamp |
	self halt.
	self saveSnapshot.
	changeList := self versionListModel getChangeListForSelectedVersion.
	selectedTimeStamp := CHBrowser extractCeiledTimeStampFrom: changeList changeList first.
	self
		resetToTime: selectedTimeStamp with: changeList;
		refresh."
	^self browserLogic resetToSelectedVersion