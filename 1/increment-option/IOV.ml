let f x = match x with
|  None -> 0
|  Some x -> x;;

let incr_opt x = 
  let x1 = f x 
  in if (x1 == 0) then
    None
  else
    Some (x1+1)
;;