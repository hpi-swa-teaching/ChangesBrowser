accessing
changeListMorph

	^ self browserWindow submorphs detect: [:a | a externalName = 'change list']