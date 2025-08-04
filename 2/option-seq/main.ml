let option_map (f : 'a -> 'b) (x : 'a option) : ('b option) =
    match x with
    | None -> None
    | Some x -> Some (f x)
;;

let ( <*> ) (f : ('a -> 'b) option) (a : 'a option) : ('b option) =
    match f with
    | None -> None
    | Some func -> option_map func a
;;


let square x = x * x
let double x = 2 * x
let multiply x y = x * y;;

assert (Some square <*> None = None);;
assert (None <*> Some 2 = None);;
assert (None <*> (Some double <*> Some 2) = None);;
assert (Some multiply <*> Some 3 <*> Some 2 = Some 6);;
assert (Some multiply <*> None <*> Some 2 = None);;