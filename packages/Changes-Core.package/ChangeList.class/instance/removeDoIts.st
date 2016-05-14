menu actions
removeDoIts
	"Remove doits from the receiver, other than initializes. 1/26/96 sw"

	| newChangeList newList |

	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	self changeList with: self list do:
		[:chRec :str |
			(chRec type ~~ #doIt or:
				[str endsWith: 'initialize'])
					ifTrue:
						[newChangeList add: chRec.
						newList add: str]].
	newChangeList size < self changeList size
		ifTrue:
			[self changeList: newChangeList.
			self list: newList.
			self listIndex: 0.
			self listSelections: (Array new: self list size withAll: false)].
	self changed: #list.

	