initialization
extractTimeStampFrom: aChangeRecord 

	aChangeRecord type == #method
		ifTrue: [^ aChangeRecord timeStamp].

	(aChangeRecord type == #doIt and: [aChangeRecord string beginsWith: '----'])
		ifTrue: [ | timeStamp timeString1 timeString2 positionOfFirstBraceLeft positionOfFirstBraceRight positionOfSeperator |
				positionOfFirstBraceLeft := aChangeRecord string findString: '{' startingAt: 1.
				positionOfSeperator := aChangeRecord string findString: ' . ' startingAt: positionOfFirstBraceLeft.
				positionOfFirstBraceRight := aChangeRecord string findString: '}' startingAt: positionOfSeperator.
				timeString1 := aChangeRecord string copyFrom: positionOfFirstBraceLeft + 1 to: positionOfSeperator - 1.
				timeString2 := aChangeRecord string copyFrom: positionOfSeperator + 2 to: positionOfFirstBraceRight - 1.
				timeStamp := TimeStamp fromString: (timeString1, timeString2).
			^ timeStamp].
	^ nil