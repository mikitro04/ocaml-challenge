let f x = match x with
|  None -> 0
|  Some x -> x;;

let incr_opt x = 
  if (f x == 0) then
    None
  else
    Some ((f x) + 1)
;;