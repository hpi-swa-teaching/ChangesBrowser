as yet unclassified
browseRecentLogOn: origChangesFile startingFrom: initialPos 
	"copied from ChangeList browseRecentLogOn:  startingFrom: "

	| end banners positions pos chunk i changesFile |
	changesFile := origChangesFile readOnlyCopy.
	banners := OrderedCollection new.
	positions := OrderedCollection new.
	end := changesFile size.
	changesFile setConverterForCode.
	pos := initialPos.
	[pos = 0
		or: [banners size > 500]]
		whileFalse: [changesFile position: pos.
			chunk := changesFile nextChunk.
			i := chunk indexOfSubCollection: 'priorSource: ' startingAt: 1.
			i > 0
				ifTrue: [positions addLast: pos.
					banners
						addLast: (chunk copyFrom: 5 to: i - 2).
					pos := Number
								readFrom: (chunk copyFrom: i + 13 to: chunk size)]
				ifFalse: [pos := 0]].
	changesFile close.
	banners size = 0 ifTrue: [^ self inform: 
'this image has never been saved
since changes were compressed' translated].
	^ {banners . positions . end . origChangesFile}.