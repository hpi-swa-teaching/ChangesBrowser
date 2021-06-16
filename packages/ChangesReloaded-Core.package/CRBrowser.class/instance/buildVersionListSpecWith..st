toolbuilder
buildVersionListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		name: 'changes groups';
		list: #groupList;
		getIndex: #groupIndex;
		setIndex: #groupIndex:;
		yourself