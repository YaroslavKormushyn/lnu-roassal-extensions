Extension { #name : #RTComposer }

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> deselectModel: model [
	[ (view elementFromModel: model) color: Color blue ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> deselectModel: model inGroup: group [
	[ ((self getGroup: group) elementFromModel: model) color: Color blue ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> deselectModels: modelCollection [
	modelCollection
		do: [ :model | 
			[ (self view elementFromModel: model) color: Color blue ]
				on: Error
				do: [ :exception | nil ] ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> deselectUsing: aBlock [
	"deselect all elements for which models aBlock answers true"

	[ view elements
		select: [ :el | 
			[ aBlock value: el model ]
				on: Error
				do: false ]
		thenDo: [ :el | el color: Color blue ] ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> deselectUsing: aBlock inGroup: groupName [
	"deselect all elements for which models aBlock answers true"

	[ (self getGroup: groupName)
		select: [ :el | 
			[ aBlock value: el model ]
				on: Error
				do: false ]
		thenDo: [ :el | el color: Color blue ] ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> groupToExisting: aName [
	"Add to existing group any new elements added to the view"

	| newGroup existingGroup |
	newGroup := self newElementsAsGroup.
	existingGroup := [mapping at: aName] on: KeyNotFound do: [ KeyNotFound signal: 'No group with ', aName, ' was found' ].
	existingGroup addAll: newGroup elements
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> hasGroup: groupId [
	"returns whether a group under groupId exists in the mapping"

	^ mapping includesKey: groupId
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> highlightModel: model [
	[ (view elementFromModel: model)
		color: Color yellow ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> highlightModel: model inGroup: group [
	[ ((self getGroup: group) elementFromModel: model) color: Color yellow ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> highlightModels: modelCollection [
	modelCollection
		do: [ :model | 
			[ (view elementFromModel: model) color: Color yellow ]
				on: Error
				do: [ :exception | nil ] ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> highlightUsing: aBlock [
	[ view elements
		select: [ :el | 
			[ aBlock value: el model ]
				on: Error
				do: false ]
		thenDo: [ :el | el color: Color yellow ] ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> highlightUsing: aBlock inGroup: groupName [
	[ (self getGroup: groupName)
		select: [ :el | 
			[ aBlock value: el model ]
				on: Error
				do: false ]
		thenDo: [ :el | el color: Color yellow ] ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> move: name1 between: name2 and: name3 [
	| g1 g2 g3 |
	g1 := self groupWithoutNest: (mapping at: name1).
	g2 := self groupWithoutNest: (mapping at: name2).
	g3 := self groupWithoutNest: (mapping at: name3).
	TRConstraint move: g1 between: g2 and: g3
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> redrawBackgroundsFor: groupNames [
	self removeAllBackgrounds.
	groupNames
		do:
			[ :name | self setBackgroundColor: (Color gray alpha: 0.2) forGroup: name ].
		(mapping includesKey: #labels)
		ifTrue: [ self groupToExisting: #labels ]
		ifFalse: [ self group: #labels ]
	
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> redrawNamesAndBackgroundsFor: groupNames [
	self
		removeAllBackgrounds;
		removeAllNames.
	groupNames
		do: [ :name | 
			self setBackgroundColor: (Color gray alpha: 0.2) forGroup: name.
			self nameGroup: name as: name asString ]
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> redrawNamesFor: groupNames [
	self removeAllNames.
	groupNames do: [ :name | self nameGroup: name as: name asString ].
	(mapping includesKey: #labels)
		ifTrue: [ self groupToExisting: #labels ]
		ifFalse: [ self group: #labels ]
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> replaceElementsInGroup: groupName with: matrix [
	self removeGroup: groupName.
	MatrixVisualizer on: matrix withView: view.
	self group: groupName.
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> replaceGroup: groupName with: elements [
	self removeGroup: groupName.
	self view addAll: elements.
	self group: groupName.
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> selectModel: model [
	[ (view elementFromModel: model) color: Color red ]
		on: Error
		do: [ :exception | 
			nil.].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> selectModel: model inGroup: group [
	[ ((self getGroup: group) elementFromModel: model)
		color: Color red ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> selectModels: modelCollection [
	modelCollection do: [ :model | 
		[ (self view elementFromModel: model) color: Color red ]
		on: Error
		do: [ :exception | nil ]]. 
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> selectUsing: aBlock [
	[ view elements
		select: [ :el | 
			[ aBlock value: el model ]
				on: Error
				do: false ]
			thenDo: [ :el | el color: Color red ] ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]

{ #category : #'*LNU-Roassal-Extensions' }
RTComposer >> selectUsing: aBlock inGroup: groupName [
	[ (self getGroup: groupName)
		select: [ :el | 
			[ aBlock value: el model ]
				on: Error
				do: false ]
		thenDo: [ :el | el color: Color red ] ]
		on: Error
		do: [ :exception | nil ].
	self view signalUpdate
]
