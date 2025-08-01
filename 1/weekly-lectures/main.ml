type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

(*
    - ALF: Tuesday, Thursday, Friday
    - LIP: Wednesday, Thursday 
*)

let isLecture (d : weekday) (c : course) : bool =
    match (d, c) with
    | (y, x) when x == ALF && ((y == Tu) || (y == Th) || (y == Fr))-> true
    | (y, x) when x == LIP && ((y == We) || (y == Th))-> true
    | _ -> false 
;;

assert (isLecture Mo ALF = false);;
assert (isLecture Tu ALF = true);;
assert (isLecture We ALF = false);;
assert (isLecture Th ALF = true);;
assert (isLecture Fr ALF = true);;

assert (isLecture Mo LIP = false);;
assert (isLecture Tu LIP = false);;
assert (isLecture We LIP = true);;
assert (isLecture Th LIP = true);;
assert (isLecture Fr LIP = false);;