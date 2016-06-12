as yet unclassified
resetToTime: aTimeStamp

	| changeList timeStampBefore changeListAfter |
	
	Smalltalk snapshot: true andQuit: false.
	
	self refresh.
		
	self refresh