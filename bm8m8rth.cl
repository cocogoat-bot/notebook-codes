(*
    --- Fact.cl ---
    This program requires the atoi library.
*)

Class Main inherits A2I {
    main(): IO { 
        (new IO).out_string("Result is:".concat(i2a(fact(a2i((new IO).in_string()))).concat("\n")))
    };


    fact(i: Int): Int {
        if (i = 0) then 1 else i * fact(i - 1) fi
    };
};