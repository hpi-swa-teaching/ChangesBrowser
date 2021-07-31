launching
startUp: resuming

	(resuming and: [self hasLostChanges]) ifTrue: [self open].