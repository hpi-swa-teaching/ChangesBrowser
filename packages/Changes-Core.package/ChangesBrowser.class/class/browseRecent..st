as yet unclassified
browseRecent: charCount
	"copied from ChangeList browseRecent: on: "
	| changeList end changesFile origChangesFile |
	origChangesFile := SourceFiles at: 2.
	
	changesFile := origChangesFile readOnlyCopy.
	changesFile setConverterForCode.
	end := changesFile size.
	changeList := Cursor read
		showWhile: [self new
						scanFile: changesFile
						from: (0 max: end - charCount)
						to: end].
	changesFile close.
	^ changeList.