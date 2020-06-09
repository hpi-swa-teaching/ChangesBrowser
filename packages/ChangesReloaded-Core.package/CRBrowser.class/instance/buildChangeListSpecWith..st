toolbuilder
buildChangeListSpecWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #changeDescriptions;
		getSelectionList: #isItemSelectedAt:;
		setSelectionList: #setItemSelectionAt:to:;
		yourself