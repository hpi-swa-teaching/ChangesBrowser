toolbuilder
buildSingleSelectionChangeListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		name: self class changeListName;
		model: self;
		list: #displayedChangeDescriptions;
		getIndex: #changeListSelectionIndex;
		setIndex: #changeListSelectionIndex:;
		yourself