public access
browseRecent: charCount on: origChangesFile 
	"Returns a changeList on the end of the specified changes log file"
	| changeList end changesFile |

	changesFile := origChangesFile readOnlyCopy.
	changesFile setConverterForCode.
	end := changesFile size.
	changeList := Cursor read
		showWhile: [self new
						scanFile: changesFile
						from: (0 max: end - charCount)
						to: end].
	changesFile close.
	^changeList