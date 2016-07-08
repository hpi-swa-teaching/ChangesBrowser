resetting
resetToSelectedVersion

	| changeList wholeChangeList |

	self saveSnapshot.

	changeList := self imageStateListModel getChangeListForSelectedVersion.
	wholeChangeList := self imageStateListModel getWholeChangeList.
	
	self resetClassesFrom: changeList.
	self resetMethods: changeList with: wholeChangeList.
	
	self refresh.
