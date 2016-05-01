menu actions
removeSelections
	"Remove the selected items from the receiver.  9/18/96 sw"

	| newChangeList newList |

	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	1 to: changeList size do:
		[:i | (listSelections at: i) ifFalse:
			[newChangeList add: (changeList at: i).
			newList add: (list at: i)]].
	newChangeList size < changeList size
		ifTrue:
			[changeList := newChangeList.
			list := newList.
			listIndex := 0.
			listSelections := Array new: list size withAll: false].
	self changed: #list

	