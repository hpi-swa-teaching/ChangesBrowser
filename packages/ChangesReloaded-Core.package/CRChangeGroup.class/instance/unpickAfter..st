actions
unpickAfter: index
	"unpick changes that were made after the change at index"
	self setPickedStatus: false between: 1 and: index - 1.