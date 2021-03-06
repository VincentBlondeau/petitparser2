tests
testUpdateBufferInRange
	key := 0. "+1"
	memento furthestPosition: 3.
	change position: 2.

	context position: memento furthestPosition.
	memento contextMemento: context remember.

	buffer at: key put: memento.
	
	newBuffer := change updateBuffer: buffer.
	self assert: (newBuffer at: key) isKindOf: PP2MementoPromise.
	self assert: (newBuffer at: key) buffer equals: newBuffer.
	self assert: (newBuffer at: key) contextMemento position equals: 2.
	self assert: (newBuffer at: key) furthestPosition equals: 2.	"not 100% it should be 2 or 3"
	self assert: (newBuffer at: key) position equals: key.
	