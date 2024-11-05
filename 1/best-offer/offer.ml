let f x = match x with
|  None -> 0
|  Some x -> x;;

let findMax a b =
  if (a >= b) then a
  else b;;

let best_offer (a : int option) (b : int option) (c : int option) : int option =
  let aValue = f a in
  let bValue = f b in
  let cValue = f c in
  if (aValue + bValue + cValue = 0) then None
  else
    let xValue = ref (findMax aValue bValue) in
    xValue := findMax !xValue cValue;
    Some !xValue;;