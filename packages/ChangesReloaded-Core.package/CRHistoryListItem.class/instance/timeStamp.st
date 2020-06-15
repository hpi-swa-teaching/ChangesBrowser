accessing
timeStamp

	^ self history 
		ifEmpty: ['']
		ifNotEmpty: [self history first stamp] 