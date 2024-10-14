let mux1 s0 a b = (((s0 && s0) && a) || b);;

let mux2 s0 a b = 
  if(s0) then
    a
  else
    b
;;

let mux3 s0 a b = match (s0, a, b) with
| (false, false, false) -> false
| (false, true, false) -> false
| (true, false, false) -> false
| (true, false, true) -> false
| _ -> true
;;

let mux4 s1 s0 a0 a1 a2 a3 = 
  let i = (s0 * 1) + (s1 * 2)
  in match i with
  | 0 -> a0
  | 1 -> a1
  | 2 -> a2
  | 3 -> a3
  | _ -> false
;;