baseline
postLoad

	(Smalltalk globals at: #SwaLint) perform: #install.

	"Reload the DockingBar after overwriting its appearance"
	TheWorldMainDockingBar updateInstances.