*Changes-Core
namedSnaphot: snapshotName
	"see snapshot: save andQuit: quit withExitCode: exitCode embedded: embeddedFlag"	
	
	| resuming msg |
	Object flushDependents.
	Object flushEvents.

	(SourceFiles at: 2) ifNotNil:[
		msg := String streamContents: [ :s |
			s nextPutAll: '----SNAPSHOT----', snapshotName;
			print: Date dateAndTimeNow; space;
			nextPutAll: (FileDirectory default localNameFor: self imageName);
			nextPutAll: ' priorSource: ';
			print: LastQuitLogPosition ].
		self assureStartupStampLogged.
		LastQuitLogPosition := (SourceFiles at: 2) setToEnd; position.
		self logChange: msg.
		Transcript cr; show: msg
	].

	Smalltalk processShutDownList: false.
	Cursor write show.
	resuming := self snapshotPrimitive.  "<-- PC frozen here on image file"
				resuming ifFalse:
					["Time to reclaim segment files is immediately after a save"
					Smalltalk at: #ImageSegment
						ifPresent: [:theClass | theClass reclaimObsoleteSegmentFiles]].
					
	Cursor normal show.
	Smalltalk setGCParameters.
	resuming ifTrue: [Smalltalk clearExternalObjects].
	Smalltalk processStartUpList: resuming.
	resuming ifTrue:[
		self setPlatformPreferences.
		self recordStartupStamp].
	Project current wakeUpTopWindow.
	"Now it's time to raise an error"
	resuming ifNil: [self error:'Failed to write image file (disk full?)'].
	^ resuming