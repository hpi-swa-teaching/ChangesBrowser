accessing
expectedAttributes

	 ^ {
		{#class->#CRChangesDummyClass. #method->#method. #stamp->'sv 26/7/2020 13:46'} asDictionary.
		{#class->#CRChangesDummyClass. #stamp->'sv 26/7/2020 13:59'} asDictionary.
		{#category->'''new category'''. #class->'CRChangesDummyClass'} asDictionary.
		{#category->'''obsolete category'''. #class->'CRChangesDummyClass'} asDictionary.
		{#class->'CRChangesDummyClass'. #newCategory->'''new category'''. #oldCategory->'''old category'''} asDictionary.
		{#class->'CRChangesDummyClass'. #package->'ChangesReloadedDummyPackage1'} asDictionary.
		{#class->'CRChangesDummyClass'. #package->'ChangesReloadedDummyPackage2'} asDictionary.
		{#class->'CRChangesDummyClass'} asDictionary.
		{#newClass->'CRChangesDummyNewClass'. #oldClass->'CRChangesDummyOldClass'} asDictionary.
		{#category->'category'. #method->'method'} asDictionary.
		{#class->'CRChangesDummyClass'. #method->'obsoleteMethod'} asDictionary.
		{#package->'ChangesReloadedDummyPackage1'} asDictionary.
		{#package->'ChangesReloadedDummyPackage1'} asDictionary.
		{#newPackage->'ChangesReloadedDummyPackage2'. #oldPackage->'ChangesReloadedDummyPackage1'} asDictionary
	} asOrderedCollection.