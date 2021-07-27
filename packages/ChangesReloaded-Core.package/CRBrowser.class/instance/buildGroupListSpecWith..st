toolbuilder
buildGroupListSpecWith: t1 
	^ t1 pluggableListSpec new model: self;
		 name: 'change groups';
		 list: #groupDescriptions;
		 getIndex: #groupIndex;
		 setIndex: #groupIndex:;
		 yourself