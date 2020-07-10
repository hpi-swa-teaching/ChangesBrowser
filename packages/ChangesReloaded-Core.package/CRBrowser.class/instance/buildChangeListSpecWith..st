building
buildChangeListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #changeDescriptions;
		getIndex: #changeListSelectionIndex;
		setIndex: #changeListSelectionIndex: