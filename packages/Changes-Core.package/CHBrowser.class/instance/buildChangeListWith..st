building
buildChangeListWith: aBuilder 

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #changeListList;
		getIndex: #changeListListIndex;
		setIndex: #changeListListIndex:;
		getSelectionList: #changeListListSelectionAt:;
		setSelectionList: #changeListListSelectionAt:put: