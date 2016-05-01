menu actions
selectUnchangedMethods
	"Selects all method definitions for which there is already a method in the current image, whose source is exactly the same.  9/18/96 sw"
	Cursor read showWhile: 
	[ | class change |
	1 to: changeList size do:
		[:i | change := changeList at: i.
		listSelections at: i put:
			((change type = #method and:
				[(class := change methodClass) notNil]) and:
					[(class includesSelector: change methodSelector) and:
						[change string withBlanksCondensed = (class sourceCodeAt: change methodSelector) asString withBlanksCondensed ]])]].
	self changed: #allSelections