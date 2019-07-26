calculating
addSpace: aSpace to: aSet withOffset: aNumber
	^ (aSet ifAbsentAdd: aSpace floor - aNumber)
		or: [ aSet ifAbsentAdd: aSpace ceiling + aNumber ]