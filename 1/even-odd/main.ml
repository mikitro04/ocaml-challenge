let is_even (a : int) : bool =
    match a mod 2 with
    | 0 -> true
    | _ -> false
;;

let win (a : int) (b : int) : int =
    match (a, b) with
    | (x, y) when (x >= 1 && x <= 5) && (y < 1 || y > 5) -> 1   (*a correct -> b incorrect*)
    | (x, y) when (x < 1 || x > 5) && (y >= 1 && y <= 5) -> -1  (*a incorrect -> b correct*)
    | (x, y) when (x < 1 || x > 5) && (y < 1 || y > 5) -> 0     (*both value incorrect*)
    | (x, y) when is_even (x + y) -> 1                          (*a wins*)
    | _ -> -1                                                    (*b wins*)
;;

assert (win 2 2 = 1);;
assert (win 3 2 = -1);;
assert (win 7 2 = -1);;
assert (win 2 7 = 1);;
assert (win 8 9 = 0);;
assert (win 1 4 = -1);;
assert (win 2 4 = 1);;