building
buildVersionListWith: aBuilder 

	^ aBuilder pluggableListSpec new
		model: self changesBrowserLogic imageStateListModel;
		name: 'Version List';
		list: #list;
		getIndex: #listIndex;
		setIndex: #listIndex:;
		yourself