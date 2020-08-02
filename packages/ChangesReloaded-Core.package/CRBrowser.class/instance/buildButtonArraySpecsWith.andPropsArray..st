toolbuilder
buildButtonArraySpecsWith: aBuilder andPropsArray: anArray

	^ (anArray
		collect: [:each | self buildButtonSpecWith: aBuilder andProps: each]) asOrderedCollection