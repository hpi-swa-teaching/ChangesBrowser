*ChangesReloaded-Core
fromAuthorStamp: aString
	"Converts a string of the form '[author initials] [date] [time]', e.g. 'mg 6/29/2020 18:26' into an actual TimeStamp."

	| tokens |
	tokens := aString findTokens: Character separators.
	^ ({2 . 3} includes: tokens size)
		ifTrue: [| dateString timeString |
			dateString := tokens nextToLast.
			timeString := tokens last.
			(dateString , ' ' , timeString) asTimeStamp]
		ifFalse: [nil]
