resetting
extractCeiledTimeStampFrom: aChangeRecord 
	aChangeRecord type == #method
		ifTrue: [^ aChangeRecord timeStamp].

	(aChangeRecord type == #doIt and: [aChangeRecord string beginsWith: '----'])
		ifTrue: [ ^self extractCeiledTimeStamp: aChangeRecord string].
	^ nil