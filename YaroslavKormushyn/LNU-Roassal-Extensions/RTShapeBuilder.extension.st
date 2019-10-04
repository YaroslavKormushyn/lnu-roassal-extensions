Extension { #name : #RTShapeBuilder }

{ #category : #'*LNU-Roassal-Extensions' }
RTShapeBuilder >> horizontalRightAttachPoint [
	"Set the vertical attach point for the edges to be built"

	self attachPoint: #withHorizontalRightAttachPoint
]

{ #category : #'*LNU-Roassal-Extensions' }
RTShapeBuilder >> orthoHorizontalLineBottommostWithOffset: offset [
	^ self shape: (RTStyledMultiLine new withHorizontalAttachPoint; orthoHorizontalBalancedToBottomWithOffset: offset)
]

{ #category : #'*LNU-Roassal-Extensions' }
RTShapeBuilder >> orthoHorizontalLineWithOffset: offset [
	^ self shape: (RTStyledMultiLine new orthoHorizontalBalancedToBottomWithOffset: offset)
]

{ #category : #'*LNU-Roassal-Extensions' }
RTShapeBuilder >> orthoVerticalLineRightmostWithOffset: offset [
	^ self
		shape:
			(RTStyledMultiLine new
				withVerticallAttachPoint;
				orthoVerticalBalancedToRightWithOffset: offset)
]

{ #category : #'*LNU-Roassal-Extensions' }
RTShapeBuilder >> verticalBottomAttachPoint [
	"Set the vertical attach point for the edges to be built"

	self attachPoint: #withVerticalBottomAttachPoint
]
