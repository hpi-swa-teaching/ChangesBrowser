resetting
extractTimeStamp: aString 

	((aString beginsWith: 'SNAPSHOT') or: [aString beginsWith: 'QUIT'] or: [aString beginsWith: '----'])
		ifTrue: [| timeStamp timeString1 timeString2 positionOfFirstBraceLeft positionOfFirstBraceRight positionOfSeperator |
			positionOfFirstBraceLeft := aString findString: '{' startingAt: 1.
			positionOfSeperator := aString findString: ' . ' startingAt: positionOfFirstBraceLeft.
			positionOfFirstBraceRight := aString findString: '}' startingAt: positionOfSeperator.
			timeString1 := aString copyFrom: positionOfFirstBraceLeft + 1 to: positionOfSeperator - 1.
			timeString2 := aString copyFrom: positionOfSeperator + 2 to: positionOfFirstBraceRight - 1.
			timeStamp := TimeStamp fromString: timeString1 , timeString2.
			^ timeStamp].
	^ nil