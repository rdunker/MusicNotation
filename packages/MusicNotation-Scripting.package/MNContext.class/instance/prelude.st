scripting
prelude
	| numerator denominator time |
	
	numerator := self measure time numerator.
	denominator := self measure time denominator.
	time := Fraction numerator: numerator denominator: denominator.
	self configurePreludeMeasureWithTime: time.
	self configureAfterPreludeMeasureWithTime: time.