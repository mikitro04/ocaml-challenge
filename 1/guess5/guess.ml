let guess5 (a : int) : bool * int =
  if (a > 5 || a < 1)then (false, 0)
  else 
    let n = Random.int (6) in
    if a = n then (true, n)
    else (false, n)
  ;;