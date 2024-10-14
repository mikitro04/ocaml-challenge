let parrot_trouble a b =
  if (a) then
    if ((0 <= b && b < 7) || (20 <= b && b <=23)) then
      Some true
    else
      None
  else
    None
;;