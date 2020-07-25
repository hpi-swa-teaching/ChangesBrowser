building
buildUpperButtonSpecsWith: aBuilder and: anArray

	^ (anArray
		collect: [:each | aBuilder pluggableButtonSpec new
				 model: self;
				 label: each first;
				 action: each second;
				 help: each third;
				 enabled: each fourth;
				 yourself]) asOrderedCollection