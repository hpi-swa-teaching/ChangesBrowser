building
buildChangeListSpecWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #displayedChangeDescriptions;
		getSelectionList: #isChangeListItemSelectedAt:;
		setSelectionList: #setChangeListItemSelectionAt:to: