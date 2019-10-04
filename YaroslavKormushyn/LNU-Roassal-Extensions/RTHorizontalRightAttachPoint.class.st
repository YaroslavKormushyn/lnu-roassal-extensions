Class {
	#name : #RTHorizontalRightAttachPoint,
	#superclass : #RTAttachPoint,
	#category : #'LNU-Roassal-Extensions-AttachPoint'
}

{ #category : #'as yet unclassified' }
RTHorizontalRightAttachPoint >> basicEndingPointOf: aRTEdge [
	^ aRTEdge to encompassingRectangle rightCenter
]

{ #category : #'as yet unclassified' }
RTHorizontalRightAttachPoint >> basicStartingPointOf: aRTEdge [
	^ aRTEdge from encompassingRectangle rightCenter
]
