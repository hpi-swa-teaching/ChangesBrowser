menu actions
removeDoIts
	"Remove doits from the receiver, other than initializes. 1/26/96 sw"

	| newChangeList newList |

	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	changeList with: list do:
		[:chRec :str |
			(chRec type ~~ #doIt or:
				[str endsWith: 'initialize'])
					ifTrue:
						[newChangeList add: chRec.
						newList add: str]].
	newChangeList size < changeList size
		ifTrue:
			[changeList := newChangeList.
			list := newList.
			listIndex := 0.
			listSelections := Array new: list size withAll: false].
	self changed: #list.

	