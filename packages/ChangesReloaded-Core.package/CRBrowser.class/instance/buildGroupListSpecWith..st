toolbuilder
buildGroupListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		name: 'change groups';
		list: #changeGroupDescriptions;
		getIndex: #groupIndex;
		setIndex: #groupIndex:;
		yourself