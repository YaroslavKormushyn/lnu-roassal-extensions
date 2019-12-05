Class {
	#name : #RTVerticalTopAttachPoint,
	#superclass : #RTAttachPoint,
	#category : #'LNU-Roassal-Extensions-AttachPoint'
}

{ #category : #'as yet unclassified' }
RTVerticalTopAttachPoint >> basicEndingPointOf: aRTEdge [
	^ aRTEdge to encompassingRectangle topCenter
]

{ #category : #'as yet unclassified' }
RTVerticalTopAttachPoint >> basicStartingPointOf: aRTEdge [
	^ aRTEdge from encompassingRectangle topCenter
]
