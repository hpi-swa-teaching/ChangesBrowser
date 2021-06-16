toolbuilder
buildVersionListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		name: 'changes versions';
		list: #versionList;
		getIndex: #versionIndex;
		setIndex: #versionIndex:;
		yourself