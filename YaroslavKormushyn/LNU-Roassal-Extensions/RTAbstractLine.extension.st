Extension { #name : #RTAbstractLine }

{ #category : #'*LNU-Roassal-Extensions' }
RTAbstractLine >> withHorizontalRightAttachPoint [
	| ap |
	ap := RTHorizontalRightAttachPoint new.
	self attachPoint: ap.
	^ ap
]

{ #category : #'*LNU-Roassal-Extensions' }
RTAbstractLine >> withVerticalBottomAttachPoint [
	| ap |
	ap := RTVerticalBottomAttachPoint new.
	self attachPoint: ap.
	^ ap
]

{ #category : #'*LNU-Roassal-Extensions' }
RTAbstractLine >> withVerticalTopAttachPoint [
	| ap |
	ap := RTVerticalTopAttachPoint new.
	self attachPoint: ap.
	^ ap
]
