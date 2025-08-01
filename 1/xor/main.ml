(*  XOR     ->  ((a && not b) || (not a && b))
    0 0  0
    0 1  1
    1 0  1
    1 1  0
*)

let xor1 (a : bool) (b : bool) : bool =
    ((a && not b) || (not a && b))
;;

let xor2 (a : bool) (b : bool) : bool = 
    if a == b then
        false
    else
        true
;;

let xor3 (a : bool) (b : bool) : bool = 
    match (a, b) with
    | (x, _) when x == b -> false
    | _ -> true
;;


assert (xor1 false false = false);;
assert (xor1 false true = true);;
assert (xor1 true false = true);;
assert (xor1 true true = false);;

assert (xor2 false false = false);;
assert (xor2 false true = true);;
assert (xor2 true false = true);;
assert (xor2 true true = false);;

assert (xor3 false false = false);;
assert (xor3 false true = true);;
assert (xor3 true false = true);;
assert (xor3 true true = false);;