evaluating
evaluateStatement: anInteger in: aMNEditorEnviroment
	| newStatus statementWithVariables |

	statementWithVariables := self addVariableStatements: (self statementAt: anInteger).
	newStatus := self evaluateToStatus: (self statementMethodCode:  statementWithVariables) in: aMNEditorEnviroment.
	newStatus isSuccess
		ifTrue: [ self project: aMNEditorEnviroment context project.
				self status: newStatus]
		ifFalse: [ self setException: newStatus statement: anInteger.].