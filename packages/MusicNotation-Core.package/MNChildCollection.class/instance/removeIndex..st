private
removeIndex: removedIndex
	(self collector at: removedIndex) privateAbandon.
	^ super removeIndex: removedIndex