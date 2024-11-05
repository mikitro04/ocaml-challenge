let is_even (x : int) : bool = 
  let even = x mod 2 in 
  match even with
  | 0 -> true
  | _ -> false
;;

let win (a : int) (b : int) : int =
  if (a >= 1 && a <= 5 && b >= 1 && b <= 5) then
    if (is_even (a + b)) then 1
    else -1
  else
    if (a >= 1 && a <= 5 && (b < 1 || b > 5)) then 1
    else if (b >= 1 && b <= 5 && (a < 1 || a > 5)) then -1
    else 0
;;  