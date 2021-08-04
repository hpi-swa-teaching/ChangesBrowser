actions
setPickedStatus: aBool between: start and: end
	"isPicked breaks law of demeter?"
	start to: end do: [:index | (self changeListItems at: index) isPicked: aBool]