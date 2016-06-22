button actions
resetToSelectedVersion

	| changeList selectedTimeStamp |

	self testMode ifFalse: [Smalltalk snapshot: true andQuit: false.
	self refresh.].
	changeList := self versionListModel getChangeListForSelectedVersion.
	selectedTimeStamp := ChangesBrowser extractTimeStampFrom: changeList changeList first.
	self
		resetToTime: selectedTimeStamp with: changeList.
	self testMode ifFalse: [self refresh.].