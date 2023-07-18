let encode list = 
        let rec aux count acc list = match list with
                | [] -> []
                | [x] -> (count, x) :: acc
                | a :: b :: t -> if a = b then aux (count + 1) acc (b :: t)
                                 else aux 1 ((count, a) :: acc) (b :: t)
                in List.rev(aux 1 [] list);;

assert (encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] = [(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")]);;
