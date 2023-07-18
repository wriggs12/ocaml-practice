type 'a node =
          One of 'a
        | Many of 'a node list;;

let flatten list =
        let rec aux acc list = match list with
                | [] -> acc
                | One h::t -> aux (h::acc) t
                | Many h::t -> aux (aux acc h) t
        in List.rev (aux [] list);;

let example = [One `a ; Many [ One `b ; Many [ One `c ; One `d ] ; One `e ] ];;

assert (flatten example = [`a;`b;`c;`d;`e]);;
