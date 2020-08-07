comparing
hash

	| hash |
	hash := self changeRecord hash.
	hash := self description hashWithInitialHash: hash.
	hash bitXor: self isPicked asBit.
	hash := self nameOfAffectedClass hashWithInitialHash: hash.
	^ hash