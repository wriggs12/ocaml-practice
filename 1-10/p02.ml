let rec last_two list = match list with
        | [] | [_] -> None
        | [x;y] -> Some (x, y)
        | _::t -> last_two t;;

assert (last_two [ 1; 2; 3; 4 ] = Some (3, 4));;
assert (last_two [ 1 ] = None);;
assert (last_two [] = None);;
