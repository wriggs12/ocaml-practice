let rec compress list = match list with
        | a :: b :: t -> if a = b then compress (b :: t) else a :: compress (b :: t)
        | ending -> ending;;

assert (compress [1; 1; 1; 1; 1; 2; 2; 2; 3; 3; 4; 5; 5; 6; 7; 7;] = [1; 2; 3; 4; 5; 6; 7]);;
