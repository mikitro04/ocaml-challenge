let f (a : int) : int =
    if a < 0 then
        -a
    else 
        a
;;

assert (f 5 = 5);;
assert (f (-5) = 5);;
assert (f 0 = 0);;
assert (f (-0) = 0);;