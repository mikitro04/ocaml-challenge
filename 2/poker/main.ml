type suit = S | H | D | C;;
type card = Card of int * suit;;

let getSuits (a : int) : suit =
    match a with
    | 0 -> S 
    | 1 -> H
    | 2 -> D
    | _ -> C
;;

let rndHand () : (card * card * card * card * card) =
    let n0 = Random.int(4) in
    let n1 = Random.int(4) in
    let n2 = Random.int(4) in
    let n3 = Random.int(4) in
    let n4 = Random.int(4) in

    let c1 : card = Card ((Random.int(13)+1), (getSuits n0)) in
    let c2 : card = Card ((Random.int(13)+1), (getSuits n1)) in
    let c3 : card = Card ((Random.int(13)+1), (getSuits n2)) in
    let c4 : card = Card ((Random.int(13)+1), (getSuits n3)) in
    let c5 : card = Card ((Random.int(13)+1), (getSuits n4)) in

    (c1, c2, c3, c4, c5)
;;

let allDiffentSuit (a, b, c, d : suit * suit * suit * suit) : bool =
    if a <> b && a <> c && a <> d then
        if b <> c && b <> d then
            if c <> d then
                true
            else
                false
        else
            false
    else
        false
;;

(*print functions*)
let stringSuit = function
  | S -> "S"
  | H -> "H"
  | D -> "D"
  | C -> "C"
;;

let printCard (Card(v, s))=
    Printf.printf "%d %s, " v (stringSuit s)
;;

(*game function*)
let poker (a, b, c, d, e : card * card * card * card * card) : bool =
    printCard a;
    printCard b;
    printCard c;
    printCard d;
    printCard e;

    match (a, b, c, d, e) with
    | (Card(h, i), Card(j, k), Card(l, m), Card(n, o), _)  when (h = j && j = l && l = n) && (allDiffentSuit (i, k, m, o)) -> true
    | (Card(h, i), Card(j, k), Card(l, m), _,  Card(n, o)) when (h = j && j = l && l = n) && (allDiffentSuit (i, k, m, o)) -> true
    | (Card(h, i), Card(j, k), _,  Card(l, m), Card(n, o)) when (h = j && j = l && l = n) && (allDiffentSuit (i, k, m, o)) -> true
    | (Card(h, i), _,  Card(j, k), Card(l, m), Card(n, o)) when (h = j && j = l && l = n) && (allDiffentSuit (i, k, m, o)) -> true
    | (_, Card(h, i), Card(j, k), Card(l, m), Card(n, o))  when (h = j && j = l && l = n) && (allDiffentSuit (i, k, m, o)) -> true
    | _ -> false
;;

assert(poker ((Card(5, S)), (Card(5, H)), (Card(5, D)), (Card(5, C)), (Card(11, S))) = true);;
assert(poker ((Card(1, S)), (Card(1, S)), (Card(1, D)), (Card(1, C)), (Card(11, S))) = false);;