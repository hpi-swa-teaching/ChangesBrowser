building
buildVersionListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self versionListModel;
		name: 'Version List';
		list: #list; 
		menu: #listMenu:;
		getIndex: #listIndex; 
		setIndex: #listIndex:;
		yourself.