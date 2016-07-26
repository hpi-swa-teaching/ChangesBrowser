resetting
extractFlooredTimeStamp: aString 

	((aString beginsWith: 'SNAPSHOT')
			or: [aString beginsWith: 'QUIT']
			or: [aString beginsWith: '----'])
	ifTrue: [| timeStamp |
			timeStamp := self extractTimeStamp: aString.
			timeStamp := timeStamp minusSeconds: timeStamp seconds.
			^ timeStamp].
	^ nil