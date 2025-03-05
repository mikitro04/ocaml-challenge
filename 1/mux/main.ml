let mux21 (s0 : bool) (a : bool) (b : bool) : bool = (a && s0) || (b && not s0);;

let mux22  (s0 : bool) (a : bool) (b : bool) : bool = 
  if s0 then a
  else b;;

let mux23  (s0 : bool) (a : bool) (b : bool) : bool = 
  match s0 with
  | true -> a
  | _ -> b;;

let mux4 (s1 : bool) ( s0 : bool) ( a0 : bool) ( a1 : bool) ( a2 : bool)  ( a3: bool) : bool = 
  if s1 then mux21 s0 a3 a2
  else mux21 s0 a1 a0;;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;