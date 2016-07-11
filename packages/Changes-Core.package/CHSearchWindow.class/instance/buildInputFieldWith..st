building
buildInputFieldWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		name: 'SearchInputField';
		getText: #contents;
		setText: #contents:;
		editText: #contents:;
		yourself