building
buildChangeListWith: aBuilder 

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #changeListContent;
		getIndex: #changeListIndex;
		setIndex: #changeListIndex:;
		getSelectionList: #changeListSelectionAt:;
		setSelectionList: #changeListSelectionAt:put:
		