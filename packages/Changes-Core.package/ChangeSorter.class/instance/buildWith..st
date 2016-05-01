toolbuilder
buildWith: builder
	"
		ToolBuilder open: ChangeSorter.
	"
	|  windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec label: 'Change Sorter'.
	windowSpec model: self.
	windowSpec children: OrderedCollection new.
	windowSpec label: #labelString.
	self buildWith: builder in: windowSpec rect: (0@0 extent: 1@1).
	^builder build: windowSpec