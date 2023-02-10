(*
    --- Fact.cl ---
    This program requires the atoi library.
*)

Class Main inherits A2I {
    main(): IO { 
        (new IO).out_string("Result is:".concat(i2a(fact_loop(a2i((new IO).in_string()))).concat("\n")))
    };

    (*
        This is a implementation using recursion
    *)
    fact(i: Int): Int {
        if (i = 0) then 1 else i * fact(i - 1) fi
    };

    (*
        This is a implementation using loop instead of recursion
    *)
    fact_loop(i: Int): Int {
        let fact: Int <- 1 in {
            while(not (i=0)) loop
                {
                    fact <- fact * i;
                    i <- i - 1;
                }
            pool;
            fact;
        }
    };
};