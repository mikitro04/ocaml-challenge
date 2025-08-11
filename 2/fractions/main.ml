let is_posfrac (a, b : int * int) : bool =
    if b <> 0 && a/b >= 0 then true
    else false
;;

let compare_posfrac (a, b : int * int) (c, d : int * int) : int =
    if (is_posfrac (a, b)) && (is_posfrac (c, d)) then
        match ((a*100 / b), (c*100 / d)) with
        | (x, y) when x = y -> 0
        | (x, y) when x > y -> 1
        | _ -> -1
    else
        failwith("the fractions must be positive and the second operator != 0")
;;

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;


let compare_frac (a, b : int * int) (c, d : int * int) : int =
    if b <> 0 && d <> 0 then
        match ((a*100 / b), (c*100 / d)) with
        | (x, y) when x = y -> 0
        | (x, y) when x > y -> 1
        | _ -> -1
    else
        failwith("The second operator must be != 0")
;;

assert (compare_frac (1,2) (2,4) == 0);;
assert (compare_frac (1,2) (1,3) == 1);;
assert (compare_frac (1,2) (2,3) == -1);;