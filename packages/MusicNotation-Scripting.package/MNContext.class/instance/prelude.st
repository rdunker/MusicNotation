accessing
prelude
    |num denum noteNum noteDenum|
    noteNum := self lastNote duration numerator.
    noteDenum := self lastNote duration denominator.
    num := self measure time numerator.
    denum := self measure time denominator.
    self measure timeNumerator: noteNum denominator: noteDenum.
    self measure prelude: true.
    self measure testNum: num.
    self measure testDenum: denum.
    self part addMeasure: self measure copyEmpty.
    self measure prelude: false.
    self measure afterPrelude: true.
    self measure timeNumerator: num denominator: denum.
 

    