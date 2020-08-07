toolbuilder
buildChangeListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		name: self class changeListName;
		list: #changeDescriptions;
		getIndex: #changeListSelectionIndex;
		setIndex: #changeListSelectionIndex:;
		yourself
		