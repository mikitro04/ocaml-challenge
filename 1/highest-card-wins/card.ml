type card = Joker | Val of int;;

let win (a : card) (b : card) : bool =
  if (a = Joker && b = Joker) then false
  else if (a = Joker && b <> Joker) then true  
  else if (a <> Joker && b = Joker) then true
  else if (a > b) then true
  else false;;