toolbuilder
buildCodePaneWith: builder
	
	^ builder pluggableCodePaneSpec new
		model: self;
		getText: #contents;
		yourself