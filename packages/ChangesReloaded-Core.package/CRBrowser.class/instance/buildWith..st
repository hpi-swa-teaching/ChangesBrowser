building
buildWith: aBuilder

	^ aBuilder build: (self createWindowSpecWith: aBuilder)