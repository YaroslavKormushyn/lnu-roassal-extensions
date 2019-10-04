Class {
	#name : #RTVerticalBottomAttachPoint,
	#superclass : #RTAttachPoint,
	#category : #'LNU-Roassal-Extensions-AttachPoint'
}

{ #category : #'as yet unclassified' }
RTVerticalBottomAttachPoint >> basicEndingPointOf: aRTEdge [
	^ aRTEdge to encompassingRectangle bottomCenter
]

{ #category : #'as yet unclassified' }
RTVerticalBottomAttachPoint >> basicStartingPointOf: aRTEdge [
	^ aRTEdge from encompassingRectangle bottomCenter
]
