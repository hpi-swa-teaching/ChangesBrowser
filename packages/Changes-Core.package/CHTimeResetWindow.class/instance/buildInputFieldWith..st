building
buildInputFieldWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		name: 'TimeInputField';
		getText: #contents;
		setText: #contents:;
		editText: #contents:;
		yourself.