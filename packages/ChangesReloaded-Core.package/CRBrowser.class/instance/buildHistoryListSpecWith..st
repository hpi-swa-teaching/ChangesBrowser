building
buildHistoryListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #historyDescriptions;
		getSelected: #selectedHistoryListItem;
		setSelected: #selectedHistoryListItem: