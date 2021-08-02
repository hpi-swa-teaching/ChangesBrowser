access
instance

	^ instance ifNil: [instance := self basicNew initialize]