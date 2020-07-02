accessing
historyListMorph

	^ self browserWindow submorphs detect: [:a | a externalName = 'history list']