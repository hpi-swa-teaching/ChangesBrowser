menu actions
selectNewMethods
	"Selects all method definitions for which there is no counterpart method in the current image"
	Cursor read showWhile: 
		[ | change class |
		1 to: self changeList size do:
			[:i | change := self changeList at: i.
			self listSelections at: i put:
				((change type = #method and:
					[((class := change methodClass) isNil) or:
						[(class includesSelector: change methodSelector) not]]))]].
	self changed: #allSelections