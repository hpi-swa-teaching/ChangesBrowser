accessing
deselectAllSelections

	self listIndex: 0.
	1 to: self displayList size do: [:index | self listSelectionAt: index put: false]