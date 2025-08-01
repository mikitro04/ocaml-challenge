type blood_group = A | B | AB | O

let check_groups (a : blood_group) (b : blood_group) : bool = 
    match (a, b) with
    | (O, _) -> true
    | (x, y) when x == y -> true
    | (_, AB) -> true
    | _ -> false
;;

assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);;