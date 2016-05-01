class initialization
belongsInRecentUpdates: aChangeSet
	"Answer whether a change set belongs in the RecentUpdates category."

	^ aChangeSet name startsWithDigit and:
			[aChangeSet name asInteger >= self recentUpdateMarker]