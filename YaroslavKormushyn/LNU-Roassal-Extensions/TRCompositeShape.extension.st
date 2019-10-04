Extension { #name : #TRCompositeShape }

{ #category : #'*LNU-Roassal-Extensions' }
TRCompositeShape >> relayoutRelative [
	"This methods places the contained shapes according to the specified layout"

	| first |
	first := self firstShape.
	shapeAndOffsets
		do: [ :shapeAndOffset | 
			shapeAndOffset first
				translateBy: shapeAndOffset second ]
]
