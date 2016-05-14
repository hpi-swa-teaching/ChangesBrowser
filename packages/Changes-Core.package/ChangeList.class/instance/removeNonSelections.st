menu actions
removeNonSelections
	"Remove the unselected items from the receiver."

	| newChangeList newList |

	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	1 to: self changeList size do:
		[:i | (self listSelections at: i) ifTrue:
			[newChangeList add: (self changeList at: i).
			newList add: (self list at: i)]].
	newChangeList size = 0 ifTrue:
		[^ self inform: 'That would remove everything.
Why would you want to do that?'].

	newChangeList size < self changeList size
		ifTrue:
			[self changeList: newChangeList.
			self list: newList.
			self listIndex: 0.
			self listSelections: (Array new: self list size withAll: false)].
	self changed: #list

	