launching
startUp: resuming

	(resuming and: [self canRestoreChanges.]) 
		ifTrue: [self open.].