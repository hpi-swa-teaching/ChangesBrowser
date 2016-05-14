menu actions
selectConflicts: changeSetOrList
	"Selects all method definitions for which there is ALSO an entry in the specified changeSet or changList"
	Cursor read showWhile: 
	[ | change class |
	(changeSetOrList isKindOf: ChangeSet) ifTrue: [
	1 to: changeList size do:
		[:i | change := self changeList at: i.
		self listSelections at: i put:
			(change type = #method
			and: [(class := change methodClass) notNil
			and: [(changeSetOrList atSelector: change methodSelector
						class: class) ~~ #none]])]]
	ifFalse: ["a ChangeList"
	1 to: self changeList size do:
		[:i | change := changeList at: i.
		self listSelections at: i put:
			(change type = #method
			and: [(class := change methodClass) notNil
			and: [changeSetOrList list includes: (self list at: i)]])]]
	].
	self changed: #allSelections