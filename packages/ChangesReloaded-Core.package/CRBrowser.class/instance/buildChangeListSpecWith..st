toolbuilder
buildChangeListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		name: CRBrowser changeListName;
		list: #changeDescriptions;
		getIndex: #changeListSelectionIndex;
		setIndex: #changeListSelectionIndex:;
		yourself
		