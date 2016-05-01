accessing
listSelections
	listSelections ifNil: [
		list ifNotNil: [
			listSelections := Array new: list size withAll: false]].
	^ listSelections