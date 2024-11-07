let hot (a : unit) : string =
  if (Random.int 2 = 1) then "head" else "tail";;