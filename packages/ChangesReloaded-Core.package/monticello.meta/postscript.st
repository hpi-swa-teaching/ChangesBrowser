(PackageInfo named: 'ChangesReloaded-Core') postscript: '"below, add code to be run after the loading of this package"

"Make the CRAfterCrashHelper open itself, while not opening the old CHAfterCrashHelper, if it exists"
Smalltalk addToStartUpList: CRAfterCrashHelper.
Smalltalk addToShutDownList: CRAfterCrashHelper.
Smalltalk removeFromStartUpList: CHAfterCrashHelper.
Smalltalk removeFromShutDownList: CHAfterCrashHelper.

"Reload the DockingBar after overwriting its appearance"
TheWorldMainDockingBar updateInstances.'!
