Extension { #name : #RTMultiLine }

{ #category : #'*LNU-Roassal-Extensions' }
RTMultiLine >> orthoHorizontalBalanceTo: balance withOffset: offset [
	"0 = level of fromPoint
	 0.5 = middle
	 1 = level of toPoint
	 offset = Number to add to x"

	self
		block: [ :fromPoint :toPoint | 
			| midx |
			midx := toPoint x * balance + (fromPoint x * (1 - balance)) + offset.
			Array
				with: fromPoint
				with: midx @ fromPoint y
				with: midx @ toPoint y
				with: toPoint ]
]

{ #category : #'*LNU-Roassal-Extensions' }
RTMultiLine >> orthoHorizontalBalancedToBottomWithOffset: offset [
	self
		block: [ :fromPoint :toPoint | 
			| midx |
			midx := { toPoint x . fromPoint x } max + offset.
			Array
				with: fromPoint
				with: midx @ fromPoint y
				with: midx @ toPoint y
				with: toPoint ]
]

{ #category : #'*LNU-Roassal-Extensions' }
RTMultiLine class >> orthoVerticalBalanceTo: balance [
    "0 = level of fromPoint
     0.5 = middle
     1 = level of toPoint"

    self
        block: [ :fromPoint :toPoint | 
            | midy |
            midy := toPoint y * balance + (fromPoint y * (1 - balance)).
            Array
                with: fromPoint
                with: fromPoint x @ midy
                with: toPoint x @ midy
                with: toPoint ]
]

{ #category : #'*LNU-Roassal-Extensions' }
RTMultiLine >> orthoVerticalBalanceTo: balance withOffset: offset [
	"0 = level of fromPoint
	 0.5 = middle
	 1 = level of toPoint
	offset = Number to add to mid y"

	self
		block: [ :fromPoint :toPoint | 
			| midy |
			midy := toPoint y * balance + (fromPoint y * (1 - balance)) + offset.
			Array
				with: fromPoint
				with: fromPoint x @ midy
				with: toPoint x @ midy
				with: toPoint ]
]

{ #category : #'*LNU-Roassal-Extensions' }
RTMultiLine >> orthoVerticalBalancedToRightWithOffset: offset [
	self
		block: [ :fromPoint :toPoint | 
			| midy |
			midy := {toPoint y.
			fromPoint y} max + offset.
			Array
				with: fromPoint
				with: fromPoint x @ midy
				with: toPoint x @ midy
				with: toPoint ]
]
