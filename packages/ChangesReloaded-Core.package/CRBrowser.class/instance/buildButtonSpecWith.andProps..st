toolbuilder
buildButtonSpecWith: aBuilder andProps: anArray
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: anArray first;
		action: anArray second;
		help: anArray third;
		enabled: anArray fourth;
		yourself