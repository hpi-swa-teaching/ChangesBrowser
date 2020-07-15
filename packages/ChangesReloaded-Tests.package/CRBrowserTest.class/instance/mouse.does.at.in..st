mock inputs
mouse: aButtonCode does: aSymbol at: aPoint in: aWorld

	^ MouseButtonEvent new
		setType: aSymbol
		position: aPoint
		which: 2r000 "no change"
		buttons: aButtonCode
		hand: (self handIn: aWorld)
		stamp: Time millisecondClockValue