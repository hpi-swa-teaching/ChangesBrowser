toolbuilder
buildGroupListSpecWith: aBuilder
	^ aBuilder pluggableListSpec new model: self;
		 name: 'change groups';
		 list: #groupDescriptions;
		 getIndex: #groupIndex;
		 setIndex: #groupIndex:;
		 yourself