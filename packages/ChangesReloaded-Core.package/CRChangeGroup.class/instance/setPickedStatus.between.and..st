actions
setPickedStatus: aBool between: start and: end
	
	start to: end do: [:index | (self changeListItems at: index) isPicked: aBool].