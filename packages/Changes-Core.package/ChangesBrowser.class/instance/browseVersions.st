as yet unclassified
browseVersions
	| versionsBrowser |
	(self changeList) notNil
		ifTrue: [versionsBrowser := self changeList browseVersions.].
	self halt.