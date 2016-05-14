menu actions
removeSelections
	"Remove the selected items from the receiver.  9/18/96 sw"

	| newChangeList newList |

	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	1 to: self changeList size do:
		[:i | (self listSelections at: i) ifFalse:
			[newChangeList add: (self changeList at: i).
			newList add: (self list at: i)]].
	newChangeList size < self changeList size
		ifTrue:
			[self changeList: newChangeList.
			self list: newList.
			self listIndex: 0.
			self listSelections: (Array new: self list size withAll: false)].
	self changed: #list

	