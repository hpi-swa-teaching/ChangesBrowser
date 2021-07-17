baseline
postLoad

	(Smalltalk globals at: #SwaLint) perform: #install.
	
	"Make the CRAfterCrashHelper open itself, while not opening the old CHAfterCrashHelper, if it exists"
	Smalltalk addToStartUpList: CRAfterCrashHelper.
	Smalltalk addToShutDownList: CRAfterCrashHelper.
	Smalltalk removeFromStartUpList: CHAfterCrashHelper.
	Smalltalk removeFromShutDownList: CHAfterCrashHelper.

	"Reload the DockingBar to add the button"
	TheWorldMainDockingBar updateInstances.