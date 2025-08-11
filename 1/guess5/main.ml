let guess5 (n : int) : bool * int =
    if n > 5 || n < 1 then failwith("wrong input")
    else
        let r = Random.int(5) + 1 in
        (n == r, r)
;;
