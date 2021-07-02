accessing
expectedAttributes

	 ^ {
		{#class->#CRChangesDummyClass. #method->#method. #stamp->'sv 26/7/2020 13:46'} as: Dictionary.
		{#class->#CRChangesDummyClass. #stamp->'sv 26/7/2020 13:59'} as: Dictionary.
		{#category->'''new category'''. #class->'CRChangesDummyClass'} as: Dictionary.
		{#category->'''obsolete category'''. #class->'CRChangesDummyClass'} as: Dictionary.
		{#class->'CRChangesDummyClass'. #newCategory->'''new category'''. #oldCategory->'''old category'''} as: Dictionary.
		{#class->'CRChangesDummyClass'. #package->'ChangesReloadedDummyPackage1'} as: Dictionary.
		{#class->'CRChangesDummyClass'. #package->'ChangesReloadedDummyPackage2'} as: Dictionary.
		{#class->'CRChangesDummyClass'} as: Dictionary.
		{#newClass->'CRChangesDummyNewClass'. #oldClass->'CRChangesDummyOldClass'} as: Dictionary.
		{#category->'category'. #method->'method'} as: Dictionary.
		{#class->'CRChangesDummyClass'. #method->'obsoleteMethod'} as: Dictionary.
		{#package->'ChangesReloadedDummyPackage1'} as: Dictionary.
		{#package->'ChangesReloadedDummyPackage1'} as: Dictionary.
		{#newPackage->'ChangesReloadedDummyPackage2'. #oldPackage->'ChangesReloadedDummyPackage1'} as: Dictionary
	} asOrderedCollection