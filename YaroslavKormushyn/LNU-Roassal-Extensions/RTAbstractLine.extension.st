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
RTAbstractLine >> withVerticalBottomToTopAttachPoint [
	| ap |
	ap := RTVerticalBottomToTopAttachPoint new.
	self attachPoint: ap.
	^ ap
]

{ #category : #'*LNU-Roassal-Extensions' }
RTAbstractLine >> withVerticalTopToBottomAttachPoint [
	| ap |
	ap := RTVerticalTopToBottomAttachPoint new.
	self attachPoint: ap.
	^ ap
]
