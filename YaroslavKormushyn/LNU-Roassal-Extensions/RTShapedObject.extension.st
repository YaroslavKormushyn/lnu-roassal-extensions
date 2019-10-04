Extension { #name : #RTShapedObject }

{ #category : #'*LNU-Roassal-Extensions' }
RTShapedObject >> updateModelAndRedraw: anObject [
	"anObject could be any Smalltalk object. Shapes are computed based on that object"

	self model: anObject.
	self update.
	self trachelShape relayoutRelative
]
