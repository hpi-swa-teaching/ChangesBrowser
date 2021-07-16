instance creation
class: aClass oldName: anOldName newName: aNewName permutation: aPermutation

	^ (self class: aClass)
		oldName: anOldName;
		newName: aNewName;
		permutation: aPermutation