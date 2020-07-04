building
buildHistoryListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		name: 'history list';
		model: self;
		list: #historyDescriptions;
		getIndex: #historyListSelectionIndex;
		setIndex: #historyListSelectionIndex:;
		menu: #setUpHistoryListMenuMorph:;
		yourself