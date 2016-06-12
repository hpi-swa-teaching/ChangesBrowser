as yet unclassified
resetToTime: aTimeStamp

	| changeList timeStampForChangeList |
	
	Smalltalk snapshot: true andQuit: false.
	self refresh.
	
	changeList := self versionListModel getChangeListForTime: aTimeStamp.
	timeStampForChangeList := ChangesBrowser extractTimeStampFrom: changeList changeList first.
	self resetToTime: timeStampForChangeList with: changeList.
	
	"TODO"
	
	self refresh.