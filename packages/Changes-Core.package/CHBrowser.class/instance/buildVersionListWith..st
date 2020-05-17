building
buildVersionListWith: aBuilder 

	^ aBuilder pluggableListSpec new
		model: self imageStateListModel;
		name: 'Version List';
		list: #list;
		getIndex: #listIndex;
		setIndex: #listIndex:;
		yourself