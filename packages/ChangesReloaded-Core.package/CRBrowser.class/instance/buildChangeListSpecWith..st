building
buildChangeListSpecWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #changeListToDisplay;
		getIndex: #selectionIndex;
		setIndex: #selectionIndex: