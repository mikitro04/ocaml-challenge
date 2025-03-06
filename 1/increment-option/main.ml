let f (x : int option) = 
  match x with
  | None -> 0
  | Some x -> x;;

let incr_option (a : int option) : int option =
  if a = None then None
  else Some (f a + 1);;

assert(incr_option None = None);;
assert(incr_option (Some 5) = Some 6);;
assert(incr_option (Some 2) = Some 3);;
assert(incr_option (Some 0) = Some 1);;