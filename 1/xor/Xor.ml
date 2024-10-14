let xor1 a b = ((a || b) && not(a && b));;

let xor2 a b = 
  if(a == b) then
    false
  else
    true
;;

let xor3 a b = match (a, b) with
| (true, true) -> false
| (false, false) -> false
| _ -> true
;;