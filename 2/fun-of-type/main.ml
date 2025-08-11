let f1 (a : int) : bool = true;;

let f2 (a : bool) : int = 0;;

let f3 (a : int) : int * bool = (0, true);;

let f4 ((a : int), (b : bool)) : int = 0 ;;

let f5 (a : int) : int -> int = fun x -> x;;

let f6 (a : int) : (int -> bool) = fun a -> true;;

let f7 (a : bool) : (int -> bool) = fun x -> a;;

let f8 (a : bool) : (bool -> int) = fun a -> 0;;

let f9 (a : bool) : (int -> int) = fun x -> x;;

let f10 (f : int -> int) : int = 0;;

let f11 (f : int -> bool) : int = 0;;

let f12 (f : bool -> int) : int = 0;;

let f13 (f : int -> bool) : bool = true;;

let f14 (f : bool -> bool) : int = 0;;

let f15 (a : int) ((b : int), (c : int)) : int = a + b + c;;

let f16 (a : int) : (int -> (int -> int)) = fun x -> fun y -> a;;

let f17 (f : int -> int) : (int -> int) = fun x -> x;;

let f18 (f : (int -> int) -> int) : int = 0;;

let f19 (f : int -> int) : (bool -> bool) = fun x -> not x;;

let f20 (f : int -> bool) : (bool -> int) = fun x -> 0;;