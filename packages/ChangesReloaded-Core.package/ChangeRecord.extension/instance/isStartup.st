*ChangesReloaded-Core
isStartup

	^ (self type == #misc) and: [((self string at: 5) = $S) and: ((self string at: 6) = $T)]