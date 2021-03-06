reporting
reportInput: anInput time: time gcTime: gcTime name: nameOrNil
	| size name |
	size := anInput inject: 0 into: [:r :e | r + e size  ].
	
	name := nameOrNil isNil 
		ifTrue: [ parser class printString ]
		ifFalse: [ nameOrNil ].
	
	report addEntry: name size: size time: time gcTime: gcTime.