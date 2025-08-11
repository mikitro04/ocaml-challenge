(* Template:

let f (x : int) : int =
    if x < 0 then failwith("negative number")
    else

;;

*)

let f1 (x : int) : int =
    if x < 0 then failwith("negative number")
    else 0
;;

let f2 (x : int) : int =
    if x < 0 then failwith("negative number")
    else
        if x <> 0 && x <> 1 && x <> 2 then 0
        else 1
;;

let f3 (x : int) : int =
    if x < 0 then failwith("negative number")
    else
        if x > 0 && x < 100 then 1
        else 0
;;

let f4 (x : int) : int =
    if x < 0 then failwith("negative number")
    else 0
;;

let f5 (x : int) : int =
    if x < 0 then failwith("negative number")
    else 1
;;

let f6 (x : int) : int =
    if x < 0 then failwith("negative number")
    else
        if x mod 2 = 0 then 1
        else 0
;;

let f7 (x : int) : int =
    if x < 0 then failwith("negative number")
    else 1
;;

let f8 (x : int) : int =
    if x < 0 then failwith("negative number")
    else 1
;;

let f9 (x : int) : int =
    if x < 0 then failwith("negative number")
    else 1
;;

let f10 (x : int) : int =
    if x < 0 then failwith("negative number")
    else
        (* x*0 e/ sempre; x*1 e quando x*1 > 7 && x*1 < 20; x*2 e quando x*2 > 7 && x*2 < 20 *)
        if x >= 4 && x <= 19 then 1
        else 0
;;

let f11 (x : int) : int =
    if x < 0 then failwith("negative number")
    else
        if x < 50 && x mod 2 = 0 then 1
        else 0
;;

let f12 (z : int) : int =
    (*
        z = 2x
        0 < 2x < 50 
    *)
    if z < 0 then failwith("negative number")
    else
        if z mod 2 = 0 && z/2 > 0 && z/2 < 50 then 1
        else 0 
;;

(*
    x, y, z
    
    x = 0
    y = z + x -> y = z + 0
    y = z = [0 .. 20]

    x = 1
    z = y + 1
    max y = 20  ->  20 * 1 <= 20
    z = 20 + 1
    z = [0 .. 21]

    x = 2
    z = y + 2
    max y = 10  ->  10 * 2 <= 20
    z = 10 + 2

    sempre a diminuire (max y)
*)
let f13 (z : int) : int =
    if z < 0 then failwith("negative number")
    else
        if z <= 21 then 1
        else 0
;;

let f14 (x : int) : int =
    if x < 0 then failwith("negative number")
    else
        if x <= 2 then 1
        else 0
;;

let f15 (x : int) : int =
    if x < 0 then failwith("negative number")
    else
        if x = 0 then 0
        else 1
;;