comparing
hash

	| hash |
	hash := self fileName hash.
	hash := hash bitXor: self position hash.
	hash := hash bitXor: self stamp hash.
	^ hash