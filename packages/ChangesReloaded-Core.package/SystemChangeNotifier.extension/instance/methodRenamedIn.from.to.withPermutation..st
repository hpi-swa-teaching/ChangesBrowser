*ChangesReloaded-Core
methodRenamedIn: aClass from: anOldName to: aNewName withPermutation: aPermutation
	
	self	trigger: (CRMethodRenamedEvent
				class: aClass
				oldName: anOldName
				newName: aNewName
				permutation: aPermutation)