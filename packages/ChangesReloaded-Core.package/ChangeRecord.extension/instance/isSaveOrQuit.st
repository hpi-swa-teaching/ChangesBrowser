*ChangesReloaded-Core
isSaveOrQuit

	^ (self type == #misc) and: [(((self string at: 5) = $Q) or: (((self string at: 5) = $S) and: ((self string at: 6) = $N)))]