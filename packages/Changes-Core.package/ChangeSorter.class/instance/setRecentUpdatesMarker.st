changeSet menu
setRecentUpdatesMarker
	"Allow the user to change the recent-updates marker"

	| result |
	result := UIManager default request: 
('Enter the lowest change-set number
that you wish to consider "recent"?
(note: highest change-set number
in this image at this time is ', ChangeSet highestNumberedChangeSet asString, ')') initialAnswer: self class recentUpdateMarker asString.
	(result notNil and: [result startsWithDigit]) ifTrue:
		[self class recentUpdateMarker: result asInteger.
		Smalltalk isMorphic ifTrue: [SystemWindow wakeUpTopWindowUponStartup]]