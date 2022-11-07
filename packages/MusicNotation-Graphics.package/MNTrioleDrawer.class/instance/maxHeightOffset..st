calculating
maxHeightOffset: aMNNoteMorph
	^ 0@((self noteHeight: (self notes select: [:note | note noteLayout noteHeight = self maxHeight]) first) - (self noteHeight: aMNNoteMorph))
