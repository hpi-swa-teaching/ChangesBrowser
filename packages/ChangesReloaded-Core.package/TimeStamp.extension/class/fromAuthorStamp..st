*ChangesReloaded-Core
fromAuthorStamp: aString
	"Converts a string of the form '[author initials] [date] [time]', e.g. 'mg 6/29/2020 18:26' into an actual TimeStamp."

	| tokens |
	tokens := aString findTokens: Character separators.
	^ tokens size = 3
		ifTrue: [| dateString timeString |
			dateString := tokens at: 2.
			timeString := tokens at: 3.
			(dateString , ' ' , timeString) asTimeStamp]
		ifFalse: [nil]