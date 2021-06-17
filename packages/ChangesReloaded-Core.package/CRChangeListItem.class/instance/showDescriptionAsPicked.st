text-attributes
showDescriptionAsPicked

	self unpickedAttributes do: [:attribute | self description removeAttribute: attribute]