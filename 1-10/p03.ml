let rec at list k = match list with
        | [] -> None
        | h::t -> if k = 1 then Some h else at t (k-1);;

assert (at [`a; `b; `c; `d; `e] 3 = Some `c);;
assert (at [`a] 3 = None);;
