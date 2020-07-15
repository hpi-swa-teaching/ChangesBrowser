toolbuilder
buildHistoryListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		name: self class historyListName;
		model: self;
		list: #historyDescriptions;
		getIndex: #historyListSelectionIndex;
		setIndex: #historyListSelectionIndex:;
		menu: #setUpHistoryListMenuMorph:;
		yourself