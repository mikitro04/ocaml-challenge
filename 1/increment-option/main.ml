let incr_opt (a : int option) : int option = 
    match a with
    | None -> None
    | Some x -> Some (x+1)
;;

assert (incr_opt (Some 0) = Some 1);;
assert (incr_opt (Some (-5)) = Some (-4));;
assert (incr_opt (Some 5) = Some 6);;
assert (incr_opt None = None);;