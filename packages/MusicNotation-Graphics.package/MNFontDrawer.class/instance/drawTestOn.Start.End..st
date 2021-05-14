accessing
drawTestOn: aCanvas Start: start End: end

|tempStart mid tempEnd|
tempStart := start.
tempEnd := end.
mid := ((tempEnd x + tempStart x)/2) @ (tempStart y + 25).

start y == end y ifFalse: [tempStart := tempStart - (20@0)]
				  ifTrue: [tempStart := tempStart - (10@0)].
	
aCanvas drawBezierShape: {tempStart rounded. mid rounded. tempEnd rounded + (8@0).}
	color: Color transparent
	borderWidth: 1
	borderColor: Color black.