buttonActions
resetChanges: aChangeList
		
	| listOfChangeRecords |
	listOfChangeRecords := aChangeList select: [:changeRecord | 
		(changeRecord string beginsWith: 'self') not
		and: [(changeRecord string beginsWith: 'SystemOrganization addCategory:') not]
		and: [(changeRecord string beginsWith: 'Object subclass:') not]
		and: [(changeRecord string beginsWith: 'Smalltalk removeClassNamed:') not]
		and: [(changeRecord string beginsWith: '----') not]].
	listOfChangeRecords do: [:changeRecord | changeRecord fileIn].