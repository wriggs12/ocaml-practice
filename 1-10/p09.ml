let pack list =
        let rec aux current acc list = match list with
                | [] -> []
                | [x] -> (x :: current) :: acc
                | a :: b :: t -> if a = b then aux (a :: current) acc (b :: t)
                                 else aux [] ((a :: current) :: acc) (b :: t) in
                List.rev (aux [] [] list);;

assert (pack ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "d"; "e"; "e"; "e"; "e"] = [["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"];
 ["e"; "e"; "e"; "e"]]);;
