type 'a rle = 
        | One of 'a
        | Many of int * 'a;;

let encode list = 
        let rec aux count acc list = match list with
                | [] -> []
                | 
