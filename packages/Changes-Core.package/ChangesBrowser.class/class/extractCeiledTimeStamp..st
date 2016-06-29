resetting
extractCeiledTimeStamp: aString 

	((aString beginsWith: 'SNAPSHOT') or: [aString beginsWith: 'QUIT'] or: [aString beginsWith: '----'])
		ifTrue: [| timeStamp |
			timeStamp := self extractTimeStamp: aString.
			timeStamp := timeStamp plusSeconds: (60 - timeStamp seconds) \\ 60.
			^ timeStamp].
	^ nil