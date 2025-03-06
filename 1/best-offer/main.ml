let f (x : int option) = 
  match x with
  | None -> 0
  | Some x -> x;;

let max (a : int) (b : int) : int =
  if a >= b then a
  else b;;

let best_offer (a : int option) (b : int option) (c : int option) : int option =
  let res = max (max (f a) (f b)) (f c) in
  if res = 0 then None
  else Some res;;

assert (best_offer (Some 100) (Some 200) (Some 150) = Some 200);;
assert (best_offer (Some 100) None (Some 150) = Some 150);;
assert (best_offer None None None = None);;
assert (best_offer None (Some 300) None = Some 300);;
assert (best_offer (Some 500) (Some 250) None = Some 500);;
assert (best_offer (Some 100) (Some 100) (Some 100) = Some 100);;
assert (best_offer None (Some 50) (Some 75) = Some 75);;
assert (best_offer (Some 10) None None = Some 10);;