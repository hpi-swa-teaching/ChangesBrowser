*ChangesReloaded-Core
primitiveExecuteSilently

	definedSelector := self changeClass compile: self source classified: self protocol withStamp: nil notifying: self controller logSource: false.
