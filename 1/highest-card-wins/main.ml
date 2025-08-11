(*
    if neither the player nor the dealer have the Joker, then the one with the highest card wins;
    if both the player and the dealer have the Joker, then the dealer wins;
    otherwise, the one with the Joker wins.
*)

type card = Joker | Val of int;;

let win (player : card) (dealer : card) : bool =
    match (player, dealer) with
    | (_, Joker) -> false
    | (Joker, Val x) -> true
    | (Val x, Val y) when x < 1 || x > 10 || y < 1 || y > 10 -> failwith("wrong input")
    | (Val x, Val y) when x > y -> true
    | _ -> false
;;

assert (win (Val 10) (Val 5) = true);;
assert (win (Val 3) (Val 8) = false);;
assert (win Joker (Val 7) = true);;
assert (win (Val 9) Joker = false);;
assert (win Joker Joker = false);;