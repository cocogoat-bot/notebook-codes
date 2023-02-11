(*
    --- list.cl ---
    As we inherit IO in the class Main, 
    there is no need to initialize a new IO object to call functions like out_string()
*)


class List {
    item: String; 
    next: List;


    init(i: String, n: List): List {
        {
            item <- i;
            next <- n;
            self;
        }
    };

    flattern(): String {
        if(isvoid next) then
            item
        else
            item.concat(next.flatten())
        fi
    };
};


class Main inherits IO {
    main(): Object {
        let hello: String <- "Hello",
            world: String <- "World",
            newline: String <- "\n",
            nil: List,
            list: List <- (new List).init(hello, 
                        (new List).init(world, 
                            (new List).init(newline, nil)
                        )
                    )
        in
            out_string(list.flatten())
    };
};