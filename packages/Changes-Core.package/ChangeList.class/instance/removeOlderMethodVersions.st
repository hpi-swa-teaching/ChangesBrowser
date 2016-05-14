menu actions
removeOlderMethodVersions
	"Remove older versions of entries from the receiver."
	| newChangeList newList found |
	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.
	found := OrderedCollection new.

	self changeList reverseWith: self list do:
		[:chRec :strNstamp | | str | str := strNstamp copyUpTo: $;.
			(found includes: str)
				ifFalse:
					[found add: str.
					newChangeList add: chRec.
					newList add: strNstamp]].
	newChangeList size < self changeList size
		ifTrue:
			[self changeList: newChangeList reversed.
			self list: newList reversed.
			self listIndex: 0.
			self listSelections: (Array new: self list size withAll: false)].
	self changed: #list