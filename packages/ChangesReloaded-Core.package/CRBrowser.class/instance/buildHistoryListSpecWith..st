building
buildHistoryListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #historyDescriptions;
		getIndex: #historyListSelectionIndex;
		setIndex: #historyListSelectionIndex:;
		menu: #setUpHistoryListMenuMorph: