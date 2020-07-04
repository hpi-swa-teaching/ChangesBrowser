toolbuilder
buildSingleSelectionChangeListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #displayedChangeDescriptions;
		getIndex: #changeListSelectionIndex;
		setIndex: #changeListSelectionIndex:;
		yourself