let square (a : int) : int =
    a*a
;;

let exp9 (a : int) : int =
    square (square (square a)) * a
;;

assert (exp9 2 = 512);;
assert (exp9 3 = 19683);;