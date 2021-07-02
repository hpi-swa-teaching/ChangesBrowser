toolbuilder
buildVersionListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		name: 'changes versions';
		list: #versionDescriptions;
		getIndex: #versionIndex;
		setIndex: #versionIndex:;
		yourself