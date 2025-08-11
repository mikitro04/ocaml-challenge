let consensus3 (f0, f1, f2 : ('a -> 'b) * ('a -> 'b) * ('a -> 'b)) (n : 'a): 'b option =
    let v0 = f0 n in    (*if n is undefined in f0 then it return Exception*)
    let v1 = f1 n in    (*if n is undefined in f1 then it return Exception*)
    let v2 = f2 n in    (*if n is undefined in f2 then it return Exception*)
    
    match (v0, v1, v2) with     (*when at leat two outputs are equals then return Some v*)
    | (x, y, _) when x = y -> Some x
    | (x, _, y) when x = y -> Some x
    | (_, x, y) when x = y -> Some x
    | _ -> None                 (*otherwise return None*)
;;


assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 1 = Some 5);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 2 = Some 2);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 3 = None);;
assert (
  try
    consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 0
    |> ignore; false
  with _ -> true);;