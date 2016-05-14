accessing
listSelections

	listSelections ifNil: [
		self list ifNotNil: [
			self listSelections: (Array new: list size withAll: false)]].
	^ listSelections