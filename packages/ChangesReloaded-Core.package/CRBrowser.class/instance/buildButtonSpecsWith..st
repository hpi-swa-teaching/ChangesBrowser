building
buildButtonSpecsWith: aBuilder

	^ (self buttons
		collect: [:each | aBuilder pluggableButtonSpec new
				 model: self;
				 label: each first;
				 action: each second;
				 help: each third;
				 yourself]) asOrderedCollection