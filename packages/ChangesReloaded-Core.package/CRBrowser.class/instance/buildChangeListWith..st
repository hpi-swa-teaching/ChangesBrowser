building
buildChangeListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #dummyList;
		getIndex: #selectionIndex;
		setIndex: #selectionIndex: