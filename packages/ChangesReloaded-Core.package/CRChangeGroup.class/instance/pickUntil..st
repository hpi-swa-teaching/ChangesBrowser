actions
pickUntil: index
	"pick changes that were made before the change at index includeing the change itself"
	self setPickedStatus: true between: index and: self size.