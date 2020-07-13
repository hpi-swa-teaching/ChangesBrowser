building
buildExcludeIncludeButtonSpecWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: self excludeButtonProps first;
		action: self excludeButtonProps second;
		help: self excludeIncludeButtonTooltipText;
		yourself