let max3  (a : int) (b : int) (c : int) : int = 
    if a > b then
        if a > c then a
        else c
    else
        if b > c then b
        else  c
;;

let min3  (a : int) (b : int) (c : int) : int = 
    if a < b then
        if a < c then a
        else c
    else
        if b < c then b
        else  c
;;

let minmax3 (a : int) (b : int) (c : int) : int*int =
    ((min3 a b c), (max3 a b c))
;;

assert (minmax3 0 1 2 = (0, 2));;
assert (minmax3 (-1) 1 2 = (-1, 2));;
assert (minmax3 5 1 2 = (1, 5));;
assert (minmax3 0 0 0 = (0, 0));;
assert (minmax3 2 1 0 = (0, 2));;