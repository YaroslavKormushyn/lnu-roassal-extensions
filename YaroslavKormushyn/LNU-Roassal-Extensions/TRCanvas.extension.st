Extension { #name : #TRCanvas }

{ #category : #'*LNU-Roassal-Extensions' }
TRCanvas >> focusOnCenterScaled [
	^ self camera focusOnCenterScaled: self extent * 0.9
]
