evaluating
evaluateStatement: anInteger in: aMNEditorEnviroment
	| newStatus localVariablesStatement |

	localVariablesStatement := self localVariablesStatement: (self statementAt: anInteger).
	newStatus := self evaluateToStatus: (self statementMethodCode: localVariablesStatement) in: aMNEditorEnviroment.
	newStatus isSuccess
		ifTrue: [ self project: aMNEditorEnviroment context project.
				self status: newStatus]
		ifFalse: [ self setException: newStatus statement: anInteger.].