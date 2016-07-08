resetting
resetToSelectedVersion

	| changeList |

	self saveSnapshot.

	changeList := self imageStateListModel getChangeListForSelectedVersion.
	
	self resetClassesFrom: changeList.
	self resetMethods: changeList.
	
	self refresh.
