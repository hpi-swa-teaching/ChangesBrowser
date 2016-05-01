toolbuilder
buildWith: builder
	| windowSpec window |
	leftCngSorter := ChangeSorter new myChangeSet: ChangeSet current.
	leftCngSorter parent: self.
	rightCngSorter := ChangeSorter new myChangeSet: 
			ChangeSorter secondaryChangeSet.
	rightCngSorter parent: self.

	windowSpec := builder pluggableWindowSpec new.
	windowSpec model: self.
	windowSpec label: 'Change Sorter'.
	windowSpec children: OrderedCollection new.
	windowSpec label: #labelString.
	leftCngSorter buildWith: builder in: windowSpec rect: (0@0 extent: 0.5@1).
	rightCngSorter buildWith: builder in: windowSpec rect: (0.5@0 extent: 0.5@1).
	window := builder build: windowSpec.
	leftCngSorter addDependent: window.		"so it will get changed: #relabel"
	rightCngSorter addDependent: window.	"so it will get changed: #relabel"
	^window