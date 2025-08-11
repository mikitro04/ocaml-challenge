let dice (a : int) : int =
    if a > 100 || a < 0 then 
        failwith("wrong input")
    else
        let r = Random.int (101) in
        if r <= a then 6        (*sarà 6*)
        else Random.int (5) + 1 (*stessa probabilità per i numeri da 1 a 5*)
;;