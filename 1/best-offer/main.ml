let maxOfTwo (a : int option) (b : int option) : int option =
    match (a, b) with
    | (_, None) -> a
    | (None, _) -> b
    | (Some x, Some y) when x >= y -> Some x
    | _ -> b
;;

let best_offer (a : int option) (b : int option) (c : int option) : int option =
    maxOfTwo(maxOfTwo a b) c
;;


assert (best_offer (Some 100) (Some 200) (Some 150) = Some 200);;
assert (best_offer (Some 100) None (Some 150) = Some 150);;
assert (best_offer None None None = None);;
assert (best_offer None (Some 300) None = Some 300);;