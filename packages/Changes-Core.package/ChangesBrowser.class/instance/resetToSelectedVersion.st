as yet unclassified
resetToSelectedVersion

	| changeList selectedTimeStamp |

	Smalltalk snapshot: true andQuit: false.
	self refresh.
	changeList := self versionListModel getChangeListForSelectedVersion.
	selectedTimeStamp := ChangesBrowser extractTimeStampFrom: changeList changeList first.
	self
		resetToTime: selectedTimeStamp with: changeList;
		refresh