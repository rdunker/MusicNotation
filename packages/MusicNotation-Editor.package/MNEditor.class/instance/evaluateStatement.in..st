evaluating
evaluateStatement: anInteger in: aMNEditorEnviroment
	| newStatus |

	newStatus := self evaluateToStatus: (self statementMethodCode: (self content contentsList at: anInteger)) in: aMNEditorEnviroment.
	newStatus isSuccess
		ifTrue: [ self project: aMNEditorEnviroment context project.
				self status: newStatus]
		ifFalse: [ self setException: newStatus statement: anInteger.].
	