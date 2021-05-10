accessing
drawTestOn: aCanvas Start: start End: end

| mid |

"mid := ((end x + start x)/2) @ 650."
mid := ((end x + start x)/2) @ (start y + 50).
	
aCanvas drawBezierShape: {start.  mid. end.}
	color: Color transparent
	borderWidth: 1
	borderColor: Color black.