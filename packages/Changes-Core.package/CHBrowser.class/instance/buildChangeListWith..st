building
buildChangeListWith: aBuilder 

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self changesBrowserLogic;
		list: #changeListList;
		getIndex: #changeListListIndex;
		setIndex: #changeListListIndex:;
		getSelectionList: #changeListListSelectionAt:;
		setSelectionList: #changeListListSelectionAt:put:
		