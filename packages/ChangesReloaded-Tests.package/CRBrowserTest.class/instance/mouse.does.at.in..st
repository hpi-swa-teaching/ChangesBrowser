mock inputs
mouse: aButtonCode does: aType at: aPoint in: aWorld

	^ MouseButtonEvent new
		setType: aType
		position: aPoint
		which: 2r000 "no change"
		buttons: aButtonCode
		hand: (self handIn: aWorld)
		stamp: Time millisecondClockValue