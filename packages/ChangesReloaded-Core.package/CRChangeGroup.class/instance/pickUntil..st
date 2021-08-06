actions
pickUntil: index
	"pick changes that were made before the change at index including the change itself"
	self setPickedStatus: true between: index and: self size.