accessing
drawTestStart: start End: end

| mid |

mid := (end x - start x)/2 @ (start y + (end x - start x)/2).
	
self canvas drawBezierShape: {start.  mid. end.}
	color: Color transparent
	borderWidth: 1
	borderColor: Color black.