testing-functionality
dontTestLoadPickedChanges
	"TODO: If this test runs, our mocked changes get loaded into the image, which lets other tests fail that are expecting these changes NOT to be in the image. Find ways to deal with that. Maybe delete all methods in CRChangesDummyClass in every test teardown"
	
	self
		assertNoChangesAreLoadedWhenAllUnpicked;
		assertPickedChangesAreLoaded