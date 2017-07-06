as yet unclassified
extractFlooredTimeStampFrom: aChangeRecord 

	aChangeRecord type == #method
		ifTrue: [^ aChangeRecord timeStamp].
	(aChangeRecord type == #doIt and: [aChangeRecord string beginsWith: '----'])
		ifTrue: [^ self extractFlooredTimeStamp: aChangeRecord string].
	^ nil