building
buildSingleSelectionChangeListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		name: 'change list';
		model: self;
		list: #displayedChangeDescriptions;
		getIndex: #changeListSelectionIndex;
		setIndex: #changeListSelectionIndex: