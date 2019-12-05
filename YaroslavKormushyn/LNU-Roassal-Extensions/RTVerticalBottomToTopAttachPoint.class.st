Class {
	#name : #RTVerticalBottomToTopAttachPoint,
	#superclass : #RTAttachPoint,
	#category : #'LNU-Roassal-Extensions-AttachPoint'
}

{ #category : #'as yet unclassified' }
RTVerticalBottomToTopAttachPoint >> basicEndingPointOf: aRTEdge [
	^ aRTEdge to encompassingRectangle topCenter
]

{ #category : #'as yet unclassified' }
RTVerticalBottomToTopAttachPoint >> basicStartingPointOf: aRTEdge [
	^ aRTEdge from encompassingRectangle bottomCenter
]
