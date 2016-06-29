button actions
resetToSelectedVersion

	| changeList selectedTimeStamp |

	self saveSnapshot.
	changeList := self versionListModel getChangeListForSelectedVersion.
	selectedTimeStamp := ChangesBrowser extractTimeStampFrom: changeList changeList first.
	self
		resetToTime: selectedTimeStamp with: changeList;
		refresh.