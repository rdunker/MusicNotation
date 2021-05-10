accessing
drawTest

| start mid end |

start := 0 @ 100.
end := 1200 @ 100.
mid := (end x - start x)/2 @ (start y + (end x - start x)/2).
	
self canvas drawBezierShape: {start.  mid. end.}
	color: Color transparent
	borderWidth: 1
	borderColor: Color black.