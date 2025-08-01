(*
    a = parrot talking or not
    b = current time ( 0 .. 23)

    parrot can talk >7 && <20
*)
let parrot_trouble (a : bool) (b : int) : bool option = 
    match (a, b) with
    | (_, y) when (y >= 7 && y < 20) -> Some false
    | (false, _) -> Some false
    | (true, y) when (y >= 0 && y < 7) || (y >= 20 && y <= 23) -> Some true
    | _ -> None
;;

assert (parrot_trouble true 1 = Some true);;
assert (parrot_trouble false 1 = Some false);;
assert (parrot_trouble true (-1) = None);;
assert (parrot_trouble true 7 = Some false);;
assert (parrot_trouble false 9 = Some false);;
assert (parrot_trouble true 20 = Some true);;
assert (parrot_trouble false 23 = Some false);;
assert (parrot_trouble true 100 = None);;