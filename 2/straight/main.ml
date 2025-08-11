type suit = S | H | D | C;;
type card = Card of int * suit;;

let straight (Card(n1, s1), Card(n2, s2), Card(n3, s3), Card(n4, s4), Card(n5, s5)) : bool =
    let arr = [|n1; n2; n3; n4; n5|] in
    Array.sort compare arr;

    if arr.(0) = (arr.(1) - 1) &&
       arr.(1) = (arr.(2) - 1) &&
       arr.(2) = (arr.(3) - 1) &&
       arr.(3) = (arr.(4) - 1) then true
    else false
;;

assert(straight ((Card(5, S)), (Card(1, H)), (Card(3, D)), (Card(2, C)), (Card(4, S)))  = true);;
assert(straight ((Card(5, S)), (Card(5, H)), (Card(5, D)), (Card(5, C)), (Card(11, S))) = false);;