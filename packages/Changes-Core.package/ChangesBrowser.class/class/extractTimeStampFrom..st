resetting
extractTimeStampFrom: aChangeRecord 
	aChangeRecord type == #method
		ifTrue: [^ aChangeRecord timeStamp].

	(aChangeRecord type == #doIt and: [aChangeRecord string beginsWith: '----'])
		ifTrue: [ ^self extractTimeStamp: aChangeRecord string].
	^ nil