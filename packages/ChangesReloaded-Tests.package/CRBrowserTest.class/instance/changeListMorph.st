accessing
changeListMorph

	^ self browserWindow submorphs detect: [:a | a externalName = CRBrowser changeGroupListName]