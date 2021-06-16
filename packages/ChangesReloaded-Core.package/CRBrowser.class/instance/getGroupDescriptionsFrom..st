accessing
getGroupDescriptionsFrom: anIndexList
	
	"ToDo Write Method Name"
	^ anIndexList collect: [:index | (self changeListItems at: index) description]