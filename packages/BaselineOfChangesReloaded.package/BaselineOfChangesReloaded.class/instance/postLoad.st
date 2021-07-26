baseline
postLoad

	(Smalltalk globals at: #SwaLint) perform: #install.
	
	"Reload the docking bar after the CRBrowser button"
	TheWorldMainDockingBar updateInstances.
	