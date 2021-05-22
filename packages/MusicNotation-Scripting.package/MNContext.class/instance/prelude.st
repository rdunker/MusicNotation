accessing
prelude
    |num denum|
    num := self measure time numerator.
    denum := self measure time denominator.
    self measure timeNumerator: 1 denominator: 4.
    self measure prelude: true.
    self part addMeasure: self measure copyEmpty.
    self measure prelude: false.
    self measure timeNumerator: num denominator: denum.
 

    