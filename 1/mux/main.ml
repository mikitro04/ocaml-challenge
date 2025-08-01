let nand (a : bool) (b : bool) : bool =
    not(a && b)
;;


let mux21 (s0 : bool) (a : bool) (b : bool) : bool =
    nand (nand s0 a) (nand (not s0) b)
;;


let mux22 (s0 : bool) (a : bool) (b : bool) : bool =
    if s0 then 
        a
    else
        b
;;


let mux23 (s0 : bool) (a : bool) (b : bool) : bool =
    match s0 with
    | true -> a
    | false -> b
;;


assert (mux21 false false false = false);;
assert (mux21 false false true = true);;
assert (mux21 false true false = false);;
assert (mux21 false true true = true);;
assert (mux21 true false false = false);;
assert (mux21 true false true = false);;
assert (mux21 true true false = true);;
assert (mux21 true true true = true);;

assert (mux22 false false false = false);;
assert (mux22 false false true = true);;
assert (mux22 false true false = false);;
assert (mux22 false true true = true);;
assert (mux22 true false false = false);;
assert (mux22 true false true = false);;
assert (mux22 true true false = true);;
assert (mux22 true true true = true);;

assert (mux23 false false false = false);;
assert (mux23 false false true = true);;
assert (mux23 false true false = false);;
assert (mux23 false true true = true);;
assert (mux23 true false false = false);;
assert (mux23 true false true = false);;
assert (mux23 true true false = true);;
assert (mux23 true true true = true);;

(*
    s0 s1 a  b  c  d
    0  0  -  -  -  -  -> a 
    0  1  -  -  -  -  -> b
    1  0  -  -  -  -  -> c
    1  1  -  -  -  -  -> d

*)

let mux4 (s0 : bool) (s1 : bool) (a : bool) (b : bool) (c : bool) (d : bool) : bool =
    if not s0 then
        mux21 s1 b a
    else 
        mux21 s1 d c
;;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;