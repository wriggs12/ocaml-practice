let reverse list = 
        let rec aux acc list = match list with
                | [] -> acc
                | h::t -> aux (h::acc) t
        in aux [] list;;

assert (reverse[1;2;3;4] = [4;3;2;1]);;
