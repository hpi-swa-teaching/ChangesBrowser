A CRFakeChangeRecord is ChangeRecord that can't be filedIn, but it tells if it received the fileIn message. This is important to not accidentally fileIn a ChangeRecord within testing.

Instance Variables
	filedIn:					Bool

filedIn
	- True if fileIn is received.
