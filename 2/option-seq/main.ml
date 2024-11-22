let square x = x * x
let double x = 2 * x
let multiply x y = x * y;;

let ( <*> ) f_opt x_opt =
  match f_opt, x_opt with
  | Some f, Some x -> Some (f x)
  | _ -> None
;;