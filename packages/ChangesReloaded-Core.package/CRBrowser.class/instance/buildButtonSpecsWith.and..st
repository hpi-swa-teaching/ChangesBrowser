building
buildButtonSpecsWith: aBuilder and: anArray

	^ (anArray
		collect: [:each | aBuilder pluggableButtonSpec new
				 model: self;
				 label: each first;
				 action: each second;
				 help: each third;
				 yourself]) asOrderedCollection