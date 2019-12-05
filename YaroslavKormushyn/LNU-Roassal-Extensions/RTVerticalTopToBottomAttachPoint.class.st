Class {
	#name : #RTVerticalTopToBottomAttachPoint,
	#superclass : #RTAttachPoint,
	#category : #'LNU-Roassal-Extensions-AttachPoint'
}

{ #category : #'as yet unclassified' }
RTVerticalTopToBottomAttachPoint >> basicEndingPointOf: aRTEdge [
	^ aRTEdge to encompassingRectangle bottomCenter
]

{ #category : #'as yet unclassified' }
RTVerticalTopToBottomAttachPoint >> basicStartingPointOf: aRTEdge [
	^ aRTEdge from encompassingRectangle topCenter
]
