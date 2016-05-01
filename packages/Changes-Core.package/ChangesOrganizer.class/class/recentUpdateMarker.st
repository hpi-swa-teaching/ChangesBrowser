services
recentUpdateMarker
	"Answer the number representing the threshold of what counts as 'recent' for an update number.  This allow you to use the RecentUpdates category in a ChangeSorter to advantage"

	^ RecentUpdateMarker ifNil: [RecentUpdateMarker := 0]