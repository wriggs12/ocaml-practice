let rec length list = match list with
        | [] -> 0
        | h::t -> 1 + length t;;

assert (length [1; 2; 3; 4; 5; 6] = 6);;
assert (length [] = 0);;
