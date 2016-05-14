menu actions
selectConflicts
	"Selects all method definitions for which there is ALSO an entry in changes"
	Cursor read showWhile: 
	[ | change class |
	1 to: self changeList size do:
		[:i | change := self changeList at: i.
		self listSelections at: i put:
			(change type = #method
			and: [(class := change methodClass) notNil
			and: [(ChangeSet current atSelector: change methodSelector
						class: class) ~~ #none]])]].
	self changed: #allSelections