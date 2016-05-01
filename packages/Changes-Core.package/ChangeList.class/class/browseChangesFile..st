fileIn/Out
browseChangesFile: fullName
	"Browse the selected file in fileIn format."

	fullName
		ifNotNil:
			[ChangeList browseStream: (FileStream readOnlyFileNamed:  fullName)]
		ifNil:
			[Beeper beep]