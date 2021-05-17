accessing
rangeOffsetIn: anEditor
	^ ((1 to: self statementNumber - 1) collect: [:i | (anEditor contentsList at: i) size] ) sum

