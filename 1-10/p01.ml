let rec last list = match list with
        | [] -> None
        | [x] -> Some x
        | h::l -> last l;;

assert (last [`a; `b ; `c ; `d] = Some `d);;
assert (last [] = None);;
